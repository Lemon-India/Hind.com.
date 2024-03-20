document.addEventListener("DOMContentLoaded", function(){

     // User submit a new post
     const submit_button = document.querySelectorAll("#submit-post");
     submit_button.forEach(button =>{
        button.addEventListener("click", () => submit_post());
     } )
  
    // User edit own post, select all the element with class="edit"
    const edit = document.querySelectorAll(".edit");

    edit.forEach(button=> {
        button.addEventListener("click", () => edit_post(button));
    });

    // User press like button,select all the element with class="like"
    const like = document.querySelectorAll(".like");

    like.forEach(button=> {
        button.addEventListener("click", () => like_post(button));
    });

    // User press follow button
    const follow_button = document.querySelectorAll("#follow-user");
    follow_button.forEach(button =>{
        button.addEventListener("click", () => follow(button));
    })

});

function submit_post(){
    // Get the csrf token
    function getCookie(name) {
        let cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            const cookies = document.cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                const cookie = cookies[i].trim();
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    const csrftoken = getCookie('csrftoken');

    console.log("Clicked")

    // Store the content the user has entered into variables
    const post_content = document.querySelector("#content").value;
    console.log(post_content)

    // Post to the post API route
    fetch("/post", {
        method: "POST",
        headers: {'X-CSRFToken': csrftoken},
        mode: "same-origin",
        // data passed into web server must be in string
        body: JSON.stringify({
            post_content : post_content
        })
    })
    .then(response => response.json())
    .then(response=> console.log(response))

}


function edit_post(button) {
    console.log("edit button has been clicked")

    // Get the post_id
    const post_id = button.dataset.editid;

    // Display the text area for user to type in
    document.querySelector(`#edited-post-${post_id}`).style.display = "block";

    // Hide the edit button and the original text
    document.querySelector(`#edit-post-${post_id}`).style.display = "none";
    document.querySelector(`#post-content-${post_id}`).style.display = "none"

    // Display the save button for user to click on after editing
    document.querySelector(`#save-${post_id}`).style.display = "block";


  
    // Get the csrf token
    function getCookie(name) {
        let cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            const cookies = document.cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                const cookie = cookies[i].trim();
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    const csrftoken = getCookie('csrftoken');
    console.log(csrftoken)

    


    // When user save the edited post, pass data into the edit API route
    save_button = document.querySelector(`#save-${post_id}`)
    save_button.addEventListener("click", () => {

        // Get the value of the edited post content
        const new_post_content = document.querySelector(`#edited-post-${post_id}`).value
        console.log("saving post")
        console.log(new_post_content)

        fetch("/edit", {
            method: "POST",
            headers: {'X-CSRFToken': csrftoken},
            mode: "same-origin",
            // data passed into web server must be in string
            body: JSON.stringify({
                new_post_content : new_post_content,
                post_id : post_id
            })
        })
        .then(response => response.json())
        .then(response=> console.log(response))

        // Hide the textarea view
        document.querySelector(`#edited-post-${post_id}`).style.display = "none";

         // Hide the save button 
        document.querySelector(`#save-${post_id}`).style.display = "none";

        // Show the edit button
        document.querySelector(`#edit-post-${post_id}`).style.display = "block";

        //Show the edited text , update the content displayed to be the new post content
        document.querySelector(`#post-content-${post_id}`).style.display = "block";
        document.querySelector(`#post-content-${post_id}`).innerHTML = new_post_content

    })

}
  

function like_post(button) {
    console.log("like button has been clicked")

    // Get the csrf token
    function getCookie(name) {
        let cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            const cookies = document.cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                const cookie = cookies[i].trim();
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    const csrftoken = getCookie('csrftoken');
    console.log(csrftoken)


    // Get the post_id
    const post_id = button.dataset.likeid;
    console.log(post_id)

    // Get the original number of likes of the post
   const original_likes = parseInt(document.querySelector(`#like-${post_id}`).innerHTML);


    // Pass the data to the like API route
    fetch("/like", {
        method: "POST",
        headers: {'X-CSRFToken': csrftoken},
        mode: "same-origin",
        // data passed into web server must be in string
        body: JSON.stringify({
            post_id : post_id
        })
    })
    .then(response => response.json())
    .then(result=>{
        console.log(result.liked)
        if (result.liked ==="True"){
           var new_likes = original_likes + 1

           // turn the heart icon red and inform user that the post is liked if user hover over the like button
           document.querySelector(`#icon-${post_id}`).style.color = "red";
           document.querySelector(`#ahref-like-${post_id}`).title = "You have liked this post"
        }
        else{
            new_likes = original_likes - 1
            // turn the heart icon back grey and inform user that the post is unliked if user hover over the like button
            document.querySelector(`#icon-${post_id}`).style.color = "rgb(153,153,153)";
            document.querySelector(`#ahref-like-${post_id}`).title = "You have unliked this post"
        }

        // Display the new like count on the post
        document.querySelector(`#like-${post_id}`).innerHTML = new_likes
        
        
    })

    
}


function follow(button){

     // Get the csrf token
     function getCookie(name) {
        let cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            const cookies = document.cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                const cookie = cookies[i].trim();
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    const csrftoken = getCookie('csrftoken');
    console.log(csrftoken)

    console.log("follow button has been clicked")

    // Get the value of the profile user id
    const profile_user_id = button.dataset.profileuser
    console.log(profile_user_id)

    // Post the data to the follow API route
    fetch("/follow",{
        method: "POST",
        headers: {'X-CSRFToken': csrftoken},
        mode: "same-origin",
        // data passed into web server must be in string
        body: JSON.stringify({
            profile_user_id : profile_user_id
        })
    })
    .then(response => response.json())
    .then(result => {
        const new_followers = result.num_followers
        if (result.follow ==="True"){
            // Update the message on the follow button
            document.querySelector("#span-follow").innerHTML = "Following"
        }
        else{
           document.querySelector("#span-follow").innerHTML = "Follow"
        }

        // Update the number of followers displayed
        document.querySelector("#num_followers").innerHTML = new_followers
    })
}
  


   


   