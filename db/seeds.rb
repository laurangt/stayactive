# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
puts "All Users Destroy"
Group.destroy_all
puts "All Groups Destroy"
# Membership.destroy_all
Post.destroy_all
puts "All Post Destroy"
# Comment.destroy_all
Project.destroy_all
puts "All Projects Destroy"
Goal.destroy_all
puts "All Goal Destroy"
# Log.destroy_all

# Users

file_user1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661696/sam_sresnq.png")
user1 = User.new(
  email: "sam@gmail.com",
  password: "123123",
  username: "Sam",
  bio: "I'm 28 used to play tennis, I am now training for a half-marathon"
)
user1.photo.attach(io: file_user1, filename: "nes.png", content_type: "image/png")
user1.save
puts "User 1 saved: #{user1}"

file_user2 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661679/hanna_j3svhk.png")
user2 = User.new(
  email: "hanna@gmail.com",
  password: "123123",
  username: "Hanna",
  bio: "I'm a 25 year old ex-gymnast. I'm currently preparing for a triathlon for next year and getting started with yoga!"
)
user2.photo.attach(io: file_user2, filename: "nes.png", content_type: "image/png")
user2.save
puts "User 1 saved: #{user2}"

file_user3 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661691/paul_sdp6tg.jpg")
user3 = User.new(
  email: "paul@gmail.com",
  password: "123123",
  username: "Paul",
  bio: "I'm Paul, 30 years old. Never been into working out, but need to start as I lvoe food too much and am gaining to much weight."
)
user3.photo.attach(io: file_user3, filename: "nes.png", content_type: "image/png")
user3.save

file_user4 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661879/susi_nrlweo.jpg")
user4 = User.new(
  email: "susi@gmail.com",
  password: "123123",
  username: "Susi",
  bio: "I'm Susi, 28 years old. Post pregnancy I need some inspiration and motivation to get back in shape"
)
user4.photo.attach(io: file_user4, filename: "nes.png", content_type: "image/png")
user4.save

file_user5 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661685/kate_cepg6n.jpg")
user5 = User.new(
  email: "kate@gmail.com",
  password: "123123",
  username: "Kate",
  bio: "I'm Kate"
)
user5.photo.attach(io: file_user5, filename: "nes.png", content_type: "image/png")
user5.save


# Groups
file_group1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669662449/running_uaizk2.png")
group1 = Group.new(
  name: "Running"
)
group1.photo.attach(io: file_group1, filename: "nes.png", content_type: "image/png")
group1.save!

file_group2 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669662449/running_uaizk2.png")
group2 = Group.new(
  name: "Triathlon"
)
group2.photo.attach(io: file_group2, filename: "nes.png", content_type: "image/png")
group2.save!

file_group3 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669662449/running_uaizk2.png")
group3 = Group.new(
  name: "Swimming"
)
group3.photo.attach(io: file_group3, filename: "nes.png", content_type: "image/png")
group3.save!

file_group4 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669662449/running_uaizk2.png")
group4 = Group.new(
  name: "Trek"
)
group4.photo.attach(io: file_group4, filename: "nes.png", content_type: "image/png")
group4.save!

file_group5 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669662449/running_uaizk2.png")
group5 = Group.new(
  name: "Padel"
)
group5.photo.attach(io: file_group5, filename: "nes.png", content_type: "image/png")
group5.save!

# Memberships
membership1 = Membership.new(
  group_id: group2.id,
  user_id: user2.id
)
membership1.save!

membership2 = Membership.create(
  group_id: group1.id,
  user_id: user1.id
)

# Post
Post.create(
  title: "Triathlon",
  content: "Finished first week of triathlon training with a 10km run!",
  membership_id: membership1.id
)

Post.create(
  title: "Triathlon",
  content: "Felt so unmotivated today, but this community made me get out of bed and do a cycling sess",
  membership_id: membership1.id
)

Post.create(
  title: "Great podcast for running",
  content: "Loved listening to the Mottiv podcast during my run, super good tips",
  membership_id: membership2.id
)

#Comments
# comment1 = Comment.new(
#   content:,
#   membership_id:,
#   post_id:
# )
# comment1.save


# Project
project1 = Project.new(
  title: "Triathlon 2023",
  description: "Ironman Venice in May 2023",
  user_id: user2.id
)
project1.save

project2 = Project.new(
  title: "Yoga",
  description: "Getting into yoga for the first time. Planning to do at least 2 sessions a week",
  user_id: user2.id
)
project2.save


#Goals
goal1 = Goal.new(
  title: "Yoga",
  description: "Getting into yoga for the first time. Planning to do at least 2 sessions a week",
  end_date: '2020-12-31',
  status:,
  project_id:
)
goal1.save


#Logs
# log1 = Log.new(
#   content:,
#   goal_id:
# )
# log1.save
