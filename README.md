# Phase-3-Products
## Author : Thomas Kambale


Deliverables
Create the following classes and their respective methods.

Setup your application so it runs from a configured run file. 

Create instances of the classes on the run file and try out the methods you just created.

Use the notation # for instance methods, and .(dot) for class methods.

Feel free to build out any helper methods if needed.

Remember: Active Record gives your classes access to a lot of methods already!

Keep in mind what methods Active Record gives you access to on each of your

classes when you're approaching the deliverables below.

Migrations
Before working on the rest of the deliverables, you will need to create a

migration for the reviews table.

A Review belongs to a Product, and a Review also belongs to a User. In your migration, create any columns your reviews table will need to establish these relationships.
The reviews table should also have:
A star_rating column that stores an integer.
A comment column that stores a string.
After creating and running your migration, create your Review class, and use the seeds.rb file to create Review instances so you can test your code.

Once you've set up your reviews table, work on building out the following deliverables.

Object Association Methods
Use Active Record association macros and Active Record query methods where appropriate (i.e. has_many, has_many through, and belongs_to).

Review
Review#user
Returns the User instance for this Review
Review#product
Returns the Product instance for this Review
Product
Product#reviews
Returns a collection of all the Reviews for the Product
Product#users
Returns a collection of all the Users who reviewed the Product
User
User#reviews
Returns a collection of all the Reviews that the User has given
User#products
Returns a collection of all the Products that the User has reviewed
Use the rake console and check that these methods work before proceeding. For example, you should be able to call User.first.products and see a list of the

products for the first user in the database based on your seed data; and Review.first.user should return the user for the first review in the database.

 Aggregate and Association Methods
Review
Review#print_review
This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
Product
Product#leave_review(user, star_rating, comment)
Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
Product#print_all_reviews
This should puts in the terminal a string representing each review for this product
Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
Product#average_rating
Returns a float representing the average star rating for all reviews for this product
User
User#favorite_product
Returns the product instance that has the highest star rating from this user
User#remove_reviews(product)
Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
You will have to delete any rows from the reviews table associated with this user and the product




### Diagram link
https://drawsql.app/teams/tom-24/diagrams/prac


![Screenshot (175)](https://github.com/TomKambale/Phase-3-Products/assets/126792766/1d1f0857-4ce7-4173-9e5f-5ad7a0e30cf4)







