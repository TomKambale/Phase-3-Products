# # Clear existing data
# Review.delete_all
# Product.delete_all
# User.delete_all

# # Create users
# user1 = User.create(name: "John")
# user2 = User.create(name: "Jane")

# # Create products
# product1 = Product.create(name: "Product 1", price: 10.99,  )
# product2 = Product.create(name: "Product 2", price: 19.99,  )

# # Create reviews
# Review.create(user: user1, product: product1, star_rating: 4, comment: "Great product!")
# Review.create(user: user2, product: product1, star_rating: 3, comment: "Good product")
# Review.create(user: user2, product: product2, star_rating: 5, comment: "Excellent product!")

# Create Users
users = []
20.times do
  users << User.create(
    name: Faker::Name.name,
    # email: Faker::Internet.email
  )
end

# Create Products
products = []
40.times do
  products << Product.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 0..100)
  )
end

# Create Reviews
users.each do |user|
  rand(1..5).times do
    product = products.sample
    Review.create(
      star_rating: rand(1..5),
      comment: Faker::Lorem.sentence,
      products_id: product.id,
      user_id: user.id
    )
  end
end