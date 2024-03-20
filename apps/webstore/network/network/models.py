from asyncio.windows_events import NULL
from django.contrib.auth.models import AbstractUser
from django.db import models


class User(AbstractUser):
    num_followers = models.IntegerField(default=0)
    num_following = models.IntegerField(default=0)


class Post(models.Model):
    username = models.ForeignKey(User, on_delete= models.CASCADE, related_name="post_creator")
    content =  models.TextField()
    num_likes = models.IntegerField()
    post_date = models.DateTimeField(auto_now_add=True)
    updated_date =  models.DateTimeField(auto_now=True)
    likes = models.ManyToManyField(User, null=True, related_name= "likes")


class Follow(models.Model):
    user = models.ForeignKey(User,on_delete= models.CASCADE, related_name = "following")
    following_user = models.ForeignKey(User,on_delete= models.CASCADE, related_name= "followers")

