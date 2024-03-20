
from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("login", views.login_view, name="login"),
    path("logout", views.logout_view, name="logout"),
    path("register", views.register, name="register"),
    path("following", views.following, name="following"),
    path("profile/<str:profile>", views.profile, name="profile"),

    # API Routes
    path("post", views.post, name="post"),
    path("edit", views.edit, name="edit"),
    path("follow", views.follow, name="follow"),
    path("like", views.like, name="like")
    
    
]
