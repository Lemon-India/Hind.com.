from itertools import count
import json
from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.shortcuts import redirect, render
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt
from django.core.paginator import Paginator

from .models import User, Post, Follow


def index(request):
    # Get all the posts and order them in reverse chronological order
    posts = Post.objects.all().order_by("-post_date")

    # Display 10 posts per page
    paginator = Paginator(posts,10)

    # Create a page number variable that request for the current page number
    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)

    return render(request, "network/index.html",{
        "posts" : posts,
        "page_obj": page_obj
    })


def login_view(request):
    if request.method == "POST":

        # Attempt to sign user in
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)

        # Check if authentication successful
        if user is not None:
            login(request, user)
            return HttpResponseRedirect(reverse("index"))
        else:
            return render(request, "network/login.html", {
                "message": "Invalid username and/or password."
            })
    else:
        return render(request, "network/login.html")


def logout_view(request):
    logout(request)
    return HttpResponseRedirect(reverse("index"))


def register(request):
    if request.method == "POST":
        username = request.POST["username"]
        email = request.POST["email"]

        # Ensure password matches confirmation
        password = request.POST["password"]
        confirmation = request.POST["confirmation"]
        if password != confirmation:
            return render(request, "network/register.html", {
                "message": "Passwords must match."
            })

        # Attempt to create new user
        try:
            user = User.objects.create_user(username, email, password)
            user.save()
        except IntegrityError:
            return render(request, "network/register.html", {
                "message": "Username already taken."
            })
        login(request, user)
        return HttpResponseRedirect(reverse("index"))
    else:
        return render(request, "network/register.html")


@login_required
def post(request):
    # Submitting a new email must be via POST
    if request.method!="POST":
        return JsonResponse({"error": "POST request required."}, status=400)

    # Get the contents of the post request from the javascript
    data = json.loads(request.body)
    post_content = data.get("post_content")
    if post_content == "":
        return JsonResponse({
            "error" : "The post has no content"
        }, status=400)

    # Create the post in the post database
    post = Post(username = request.user, content = post_content, num_likes=0)
    post.save()
    return JsonResponse({"message": "Post added successfully!"})



@login_required
def profile(request, profile):
    individual_user = User.objects.get(username = profile)

    # Check if user is viewing own profile
    if request.user.username == profile:
        own_profile = True
    else:
        own_profile = False

    # Check if user is already following the user whose profile the current user are viewing
    user_following = Follow.objects.filter(user=request.user).values_list("following_user",flat=True)
    individual_user = User.objects.get(username = profile)
    if individual_user.id not in user_following:
        message = "Follow"
    else:
        message= "Following"

    # Get all the posts and order them in reverse chronological order
    posts = Post.objects.filter(username = individual_user.id).order_by("-post_date")

    # Display 10 posts per page
    paginator = Paginator(posts,10)

    # Create a page number variable that request for the current page number
    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)

    return render(request, "network/profile.html",{
        "profile_user" : individual_user,
        "posts" : posts,
        "count" : Post.objects.filter(username = individual_user.id).count(),
        "own_profile": own_profile,
        "message" : message,
        "page_obj" :page_obj
    })

@login_required
def follow(request):
    # Submitting a follow request must be via POST
    if request.method != "POST":
        return JsonResponse({"error": "POST request required."}, status=400)

    # Get contents of the post request from jasvascript
    data = json.loads(request.body)
    profile_user_id = int(data.get("profile_user_id"))
    profile_user = User.objects.get(id = profile_user_id)
    current_user = User.objects.get(id = request.user.id)

    # Get the original number of following for the current user and the number of followers for the user whose profile the current user are viewing
    original_following = current_user.num_following
    original_followers = profile_user.num_followers
    
    # Check if the current user is already following this profile user
    user_following = Follow.objects.filter(user=request.user.id).values_list("following_user", flat=True)

    # If the user is already following the profile user
    if profile_user_id in user_following:

        # Delete the user from the follow database
        follow_record = Follow.objects.get(user = current_user, following_user = profile_user)
        follow_record.delete()
 
        # Decrease the number of following for the current user and the number of followers for the profile user
        new_following = original_following - 1
        new_followers = original_followers - 1
        current_user.num_following = new_following
        profile_user.num_followers = new_followers
        current_user.save()
        profile_user.save()
        
        # Return the JSON response
        return JsonResponse({
            "follow" : "False",
            "num_followers" : profile_user.num_followers 
        }, status=200)

    else:
        # Add the user into the follow database
        follow_record = Follow.objects.create(user = current_user, following_user = profile_user)
        follow_record.save()

        # Increase the number of following for the current user and the number of followers for the profile user
        new_following = original_following + 1
        new_followers = original_followers + 1
        current_user.num_following = new_following
        profile_user.num_followers = new_followers
        current_user.save()
        profile_user.save()

        return JsonResponse({
            "follow" : "True",
             "num_followers" : profile_user.num_followers 
        }, status=200)


@login_required
def following(request):
    # Get the list of the users the current user is following
    user_following = Follow.objects.filter(user = request.user).values_list("following_user", flat=True)

    # Get all the posts in reverse chronological order
    posts = Post.objects.filter(username__in = user_following).order_by("-post_date")

    # Display 10 posts per page
    paginator = Paginator(posts,10)

    # Create a page number variable that request for the current page number
    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)

    return render(request, "network/following.html",{
        "posts" : posts,
        "page_obj": page_obj
    })

   
    


@login_required
def edit(request):
    # Submitting a new email must be via POST
    if request.method != "POST":
        return JsonResponse({"error": "POST request required."}, status=400)

    # Get contents of post of the POST request
    data = json.loads(request.body)
    new_post_content = data.get("new_post_content")
    post_id = int(data.get("post_id"))
    if new_post_content == "":
        return JsonResponse({
            "error" : "The post has no content"
        }, status=400)

    
    # Update the post database
    post = Post.objects.get(id = post_id)
    post.content = new_post_content
    post.save(update_fields=["content"])

    return JsonResponse({"message": "Post edited successfully!"})



@login_required
def like(request):

     # Submitting a like must be via POST
    if request.method != "POST":
        return JsonResponse(
            {"error": "POST request required."}, 
            status=400
            )

    # Get the id of the post 
    data = json.loads(request.body)
    post_id = int(data.get("post_id"))

    # Check if the user has already liked the post
    post =  Post.objects.get(id = post_id)

    # If user has already liked the post
    if request.user in post.likes.all():

        #Remove the user from the database
        post.likes.remove(request.user)

        # Decrease the number of likes since user has unliked the post
        post.num_likes -= 1
        post.save()
       

        return JsonResponse({
            "liked" : "False",
            "message" : "Unlike is Successful!"
        }, status=200)

    else:
        # If user has not liked the post yet
        # Add the user into the database
        post.likes.add(request.user)

        # Increase the number of likes since user has liked the post
        post.num_likes += 1 
        post.save()

        return JsonResponse({
            "liked" : "True",
            "message" : "Like is Successful!"
        }, status=200)





     
    
       
    

    


   





    
      
    





    




