# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Domain model with attributes (also foreign keys):
                   User 
                      |
                  Review
                      |
Author --< Book >-- Genre

User: name (str), 
Review: user id(foreign), book id(foreign), message(str), rating(int)
Book: title(str), author id(foreign), genre id(foreign)
Author: name(str)
Genre: name(str)

User: has many reviews, has many books through reviews
Reviews: belongs to users, belongs to books 
Author: has many books, has many genres through books
Books: belongs to author, belongs to genre, has many reviews
Genre: has many books, has many authors through books


User will be able to:
Create a review on book [validates + error messaging]
Read all reviews based on an instance of book
Read all reviews based on an instance of author
Read all reviews based on an instance of genre
Edit review 
Delete a review
Stretch goals:::
Create author if not exist
Create genre if not exist 
Cool CSS! 
Login | Signup for User
