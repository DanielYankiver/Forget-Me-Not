<img src="Friend Send GitHub ReadMe Cover.png" alt="Honeycomb" width="1200"/>

`Friend Send` provides a way to never forget an important moment in your friends lives again! No more missing friends birthdays, anniversaries, or special events.  Friend Send allows users to schedule an important text ahead of time so that you do not forget to send them a message when it matters most.

## Live Link & Demo

Visit the [Live Link](http://friendsend.herokuapp.com/welcome) 

To login, use the username "markymark" and password "abc123".

<img src="Login Friend Send.gif" alt="login" width="800"/>

Watch the [Demo](https://www.loom.com/share/c99014653d9b42ef8ad25c5ed7229a85)

## Technologies Used

`Friend Send` is a `Ruby on Rails` and `SQLite` back end. It utilizes Twilio's texting API to schedule text messages on certain dates.  All styling was done with custom CSS and Bootstrap. The live link for `Friend Send` is deployed on [Heroku](http://friendsend.herokuapp.com/welcome).

## Features

Users are both able to create a contact and an event. When the user creates a contact, that contact requires a phone number and birthdate on the form.  Additionally, when creating an event, Friend Send requires a date, time, message, and a contact.  This provides our app with all the information to schedule a message to the right person on a specific date/time. And that's it!  No more dealing with amnesia when it comes to remembering to reach out on important days, it's all taken care of!

### Create a Contact

Users are able to save a bookmark.  Once you navigate to a website that you are interested in saving for later; copy the url address, paste it in the search bar, and then wait a couple seconds.  That's it! It's bookmarked.

<img src="Create a Contact Friend Send.gif" alt="create a contact" width="800"/>

### Search Through Contact List

Once a bookmark is saved, simply begin searching for the website's name.  Honeycomb scrapes the bookmark's h1 title, body text, and main image.

<img src="Search Through Contacts.gif" alt="search contacts" width="800"/>

### Create an Event

Once a bookmark is saved, simply begin searching for the website's name.  Honeycomb scrapes the bookmark's h1 title, body text, and main image.

<img src="Create an Event.gif" alt="create an event" width="800"/>

## License

The [MIT](https://choosealicense.com/licenses/mit/) License

Copyright (C) 2021 - [Mark Ghaida](https://github.com/markghaida) 
