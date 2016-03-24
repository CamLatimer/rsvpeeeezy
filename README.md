# project-2

This project is a three model CRUD app that allows a user to build web pages for events, similar to Facebook events pages or various evite/invite style services.
It's deployed via Heroku here: http://rsvpeeeezy.herokuapp.com

# User stories:

* The user gets to input details for their event such as address, date/time, a flyer,
and a description.  

* Event info is displayed on a webpage along with a link for the user
to share with whoever he wants to invite or see event details.  

* Anyone who accesses an event page can add a message and/or RSVP to the event,
but only the user who created the event can edit / delete the event

* The user who created the event page can see the emails and or names of people who are coming.

* Users get to create individual accounts with a profile page which shows all the
events they created

* Only users with accounts can make edits to events.

* The user should be able to navigate the site with relative ease.  

# The Approach

I first spent a few hours coming up with models and views.  Then I spent some time going back over resources on Rails to make sure I could do exactly what I wanted.
Wireframing was valuable. It helped me visualize the routes and actions I needed to map out and tie together and also what features I wanted to include for the user.

Then I built the barebones of the app.  I made models, ran migrations, and controllers and views.  I didn't put things together in a linear fashion, finishing one piece and moving on to another in the MVC framework.  Instead, I spent a lot of time bouncing from one component to another, then back around to finish things off.  
I made the app intitially with just a model for events associated with a model for guests. Later on, I added a model for users, associated with events.  So, in the end, each user can have many events, and each event can have many guests.  
Finally, I did a small amount of work on permissions, just some logic in controllers and views that stops anyone at a browser that's not signed in from accessing certain
links or paths.

I styled the site as I went along.  I didn't make it priority over the functionality of the site.  But I find styling as I go helps me to take a break from only working on the same task for too long so I stay fresh and motivated.   

# Technologies

JQuery, CSS, CSS, Ruby on Rails, Postgresql, Bootstrap_form, Git/Github, Heroku.

# Video Walkthrough
https://youtu.be/JLw5dFmd_ww
