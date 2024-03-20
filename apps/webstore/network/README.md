# Network Project

This project is a web application of a social network.

This project was built using Django as a backend framework and HTML, CSS , Bootstrap and JavaScript as frontend programming tools. All generated details are saved in a database, which is SQLite by default.

All webpages of the project are mobile-responsive.

#### Features of the project 
This project contains the features below where users can:
- write and submit a new post
- view the posts published by other users 
- edit their own posts and save the edited posts
- like and unlike other users' posts
- follow and unfollow other users
- Each page displays 10 posts. Users can navigate to the next page of posts using the pagination button on the bottom of each page


#### Running the application
  - Install project dependencies by running `pip install -r requirements.txt`.
  - Make and apply migrations by running `python manage.py makemigrations` and `python manage.py migrate`.
  - Create superuser with `python manage.py createsuperuser`. This will create a user with admin privileges, with permissions to create, read, update and delete data in the Django admin
  - Run the django server using `python manage.py runserver` to enter the homepage of the web application.

#### Files and directories
  - `network` - main application directory.
    - `static/network` contains all static content.
        - `styles.css` contains compiled CSS file
        - `index.js` - script that run in all the templates
           
       
    - `templates/blog` contains all application templates.
        - `layout.html` - Base templates. Other templates extend it.
        - `register.html` -  The page that show the register page for user to register for a new account
        - `login.html` -  The page that show the login page for user to log in
        - `index.html` -  The homepage of the webpage, displays all the posts that users have published. Users can write a post on this page.
        - `following.html` -  The page that show all the posts by users whom the user is following
        - `profile.html` -  The page that displays all the posts published by the individual user and details such as the total number of posts published, number of followers and the number of users the user is following
   
    - `admin.py` -admin settings for model view
    - `models.py` contains the three models that I have used in the project- User, Post and Follow
    - `urls.py` - contains all application URLs.
    - `views.py`  contains all application views.

My project's video :https://www.youtube.com/watch?v=fpccOLPWpl0
