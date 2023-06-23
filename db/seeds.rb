# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate 10 sample users
(1..10).each do
  User.create(
    email: Faker::Internet.email,
    password: '12345678',
  )
end

# Generate 15 blogs
(1..15).each do
  Blog.create(
    user: User.all.sample,
    title: Faker::Book.title,
  )
end

# Generate 30 blog posts
(1..30).each do
  Post.create(
    blog: Blog.all.sample,
    title: Faker::Lorem.sentence.titleize,
    body: Faker::Lorem.paragraph
  )
end

# Generst 20 comments
(1..20).each do
  Comment.create(
    post: Post.all.sample,
    user: User.all.sample,
    body: Faker::Lorem.paragraph
  )
end
