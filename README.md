## **Paranormal Encounters Application- API**.
------------------------------------------------------

**This is an API for an application that allows users to log a paranormal
encounter where they that will keep track of multiple important aspects of said
encounter. I created this project as part of General Assembly's Software
Engineering Immersive Program. Whether you want to have a paranormal encounter
or not, I hope you have fun making some up or reading through other's!**

### **Important Links**:

* [My SPA hosted on Github Pages](https://reginapizza.github.io/paranormal_encounters_app/)
* [My client repository on Github](https://github.com/reginapizza/paranormal_encounters_app)
* [My API repository on Github](https://github.com/reginapizza/Paranormal_API)
* [My API hosted on Heroku](https://sheltered-lowlands-54306.herokuapp.com/)

### **Technologies Used:**
* Ruby
* Ruby on Rails

### **User Stories:**

1. As a user, I want to be able to log an encounter with a paranormal entity.

2. As a user, I want to be able to edit an encounter with a paranormal entity.

3. As a user, I want to be able to delete an encounter with a paranormal entity.

4. As a user, I want to be able to see all my encounters with paranormal entities.

5. As a user, I want to be able to get an encounter by a data point (location, ghost name, date, weather)

7. As a user, I want the website to visually appealing and easy to navigate.

8. As a user, I want to know the difference between paranormal entities before I log them.

9. As a user, I want to be able to sign up, sign-in, change password, and sign out.

### **Planning Story:**

When creating this API, I knew I wanted my database to hold a user and that user's encounters. Originally, I had planned for encounters to consist of multiple kinds of entities that would each have their own table, but as I began thinking about what attributes I would want a user to fill out about those entities, I realized that most of their attributes would be pretty much the same. For that reason, I decided to have entities just be one big table with 11 different columns. I started by making my table: users had many encounters and encounters belonged to a user. I tested my crud actions with curl scripts and everything went moderately well, despite my curl scripts taking forever to write because I had to fill in 11 different key and value pairs, and having to do that multiple times since I often had typos. (In my curl scripts files you will find files with sample scripts so that I only had to copy and paste the format and then I only had to change the values.) After changing my controllers around and playing around with validations, I was pretty much done and working on front end of the project (see link above for deployed site).

### **Problems I Ran in to:**

When I was creating my table in my database, I decided to separate ```time``` and ```date``` instead of doing ```dateTime``` because I wanted the date to be validated, but I wanted the user to be able to choose whether or not they wanted to put in a time (in case they didn't know the time something happened). Because I was putting in the data type as time, it was also displaying with a date when the user submitted data (the date would always be 2000-01-01), so I had to include javascript in my frontend code that would change it to an acceptable format, and would loop through the data for getting all the encounters to change each date on the page to an acceptable format. I grappled with the option of changing my column's data type to a string, or to get rid of ```date``` and ```time``` columns to change them to ```dateTime```, but in the end I decided to keep it as it was and just fix it on the frontend because I thought the structure for what I was trying to do was the right way to store it.

I also originally had an issue generating my scaffold at first but that was because I had been using date as a column name and didn't realize it was a reserved word. After changing the column name to date_of_encounter I was able to generate my scaffold.

### **Future Updates:**

For future updates, I would like to add an option for a user to click a button and see only their encounters as opposed to everyone's encounters. For the original requirements of the project I had to pick either showing all resources or showing all of the user's resources. I figured that it would be more fun to see everyone's encounters than just your own so I ended up going with that choice, but I would eventually like to do both and I do not think it would be too hard.

I would also like to have a way for a user to upload a picture or a video when creating an encounter, although I'm not sure if there's more to that than I think there is. I will have to look more into that, but hopefully that will be an option in V2!

### **Original Wireframe Sketch:**

![Original Entity Relation Diagram](https://i.imgur.com/prjNGOF.jpg)
