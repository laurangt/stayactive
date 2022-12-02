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
Membership.destroy_all
puts "All Membership Destroy"
Post.destroy_all
puts "All Post Destroy"
# Comment.destroy_all
Project.destroy_all
puts "All Projects Destroy"
Goal.destroy_all
puts "All Goal Destroy"
# Log.destroy_all

# Users

file_user1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661691/paul_sdp6tg.jpg")
user1 = User.new(
  email: "jorrit@gmail.com",
  password: "123123",
  username: "Jorrit",
  bio: "I'm a Deutch 30 year old bycicle lover that wants to meet people to go out and sort out Madrid´s traffic while we have some fun. If I can find people who know something about coding, rain and futbol, it would be even better."
)
user1.photo.attach(io: file_user1, filename: "nes.png", content_type: "image/png")
user1.save
puts "User 1 saved: #{user1}"

file_user2 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661679/hanna_j3svhk.png")
user2 = User.new(
  email: "laura@gmail.com",
  password: "123123",
  username: "Laura",
  bio: "I'm a 22 year old sports science profesional that wants to start preparing to win any marathon during 2023"
)
user1.photo.attach(io: file_user2, filename: "nes.png", content_type: "image/png")
user1.save
puts "User 2 saved: #{user2}"

file_user3 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661691/paul_sdp6tg.jpg")
user3 = User.new(
  email: "vito@gmail.com",
  password: "123123",
  username: "Vitotalian",
  bio: "I'm Vito, a Venezuelan and Italian 30 year old guy that has just moved to Madrid. I currently have a very stressing job, so I need to exercise and, at the same time, meet local people"
)
user3.photo.attach(io: file_user3, filename: "nes.png", content_type: "image/png")
user3.save
puts "User 3 saved: #{user3}"

file_user4 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661691/paul_sdp6tg.jpg")
#File.open from pictures_folder
user4 = User.new(
  email: "alberto@gmail.com",
  password: "123123",
  username: "Mexiberto",
  bio: "I´m Alberto. I love to exercise, even though; since I suffer from hipotiroidism,it is very difficult for me to be consistent on my workouts. I would really like to meet other people and go out running or trekking"
)
user4.photo.attach(io: file_user4, filename: "nes.png", content_type: "image/png")
user4.save

file_user5 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669661691/paul_sdp6tg.jpg")
user5 = User.new(
  email: "leo@gmail.com",
  password: "123123",
  username: "Leotroiscents",
  bio: "Hello world, I´m Leo. I love to food, front-end developing and my Greek romantic accent (as girls always point out). I like to find practice boxing"
)
user5.photo.attach(io: file_user5, filename: "nes.png", content_type: "image/png")
user5.save


# Groups
file_group1 = URI.open("https://img.icons8.com/dusk/64/D5B3DC/girl-running--v1.png")
group1 = Group.new(
  name: "Running"
)
group1.photo.attach(io: file_group1, filename: "nes.png", content_type: "image/png")
group1.save!

file_group2 = URI.open("https://img.icons8.com/dusk/64/null/leaderboard.png")
group2 = Group.new(
  name: "Triathlon"
)
group2.photo.attach(io: file_group2, filename: "nes.png", content_type: "image/png")
group2.save!

file_group3 = URI.open("https://img.icons8.com/dusk/64/D5B3DC/swimming.png")
group3 = Group.new(
  name: "Swimming"
)
group3.photo.attach(io: file_group3, filename: "nes.png", content_type: "image/png")
group3.save!

file_group4 = URI.open("https://img.icons8.com/dusk/64/D5B3DC/trekking.png")
group4 = Group.new(
  name: "Trekking"
)
group4.photo.attach(io: file_group4, filename: "nes.png", content_type: "image/png")
group4.save!

file_group5 = URI.open("https://img.icons8.com/dusk/64/null/boxing.png")
group5 = Group.new(
  name: "Boxing"
)
group5.photo.attach(io: file_group5, filename: "nes.png", content_type: "image/png")
group5.save!

file_group6 = URI.open("https://img.icons8.com/dusk/64/null/sleeping-mat.png")
group5 = Group.new(
  name: "Yoga"
)
group5.photo.attach(io: file_group6, filename: "nes.png", content_type: "image/png")
group5.save!

file_group7 = URI.open("https://img.icons8.com/dusk/64/null/cycling-road.png")
group5 = Group.new(
  name: "Cycling"
)
group5.photo.attach(io: file_group7, filename: "nes.png", content_type: "image/png")
group5.save!


# Memberships
membership1 = Membership.new(
  group_id: group2.id,
  user_id: user2.id
)
membership1.save!

membership2 = Membership.create(
  group_id: group3.id,
  user_id: user1.id
)

membership3 = Membership.create(
  group_id: group4.id,
  user_id: user3.id
)

membership4 = Membership.create(
  group_id: group1.id,
  user_id: user4.id
)

membership5 = Membership.create(
  group_id: group5.id,
  user_id: user5.id
)

# Post
Post.create(
  title: "Not an easy journey"
  content: "Everything good in life is worth it!",
  membership_id: membership1.id
)

Post.create(
  title: "Triathlon, here I go"
  content: "Managed to finish the first week of triathlon training. What a great friday completing a 10km run!",
  membership_id: membership1.id
)

Post.create(
  title: "It was just a bad day, not a bad life",
  content: "This was a very stressfull week. I wanted to stay home and rest, however; my running team motivated me to finish a great running session"
  membership_id: membership4.id
)

Post.create(
  title: "Rain did not stop us",
  content: "The weather was not the best but my buddies made this training worth it"
  membership_id: membership4.id
)

Post.create(
  title: "Nada como salir a rodar un sabado por la mañana",
  content: "Felt so unmotivated today, but this community made me get out of bed and do a running sess",
  membership_id: membership1.id
)

Post.create(
  title: "Cycling in Madrid Rio is such a good idea",
  content: "My group friends suggested going to Madrid Rio and I think it was a great idea. Such a beatiful place",
  membership_id: membership1.id
)

Post.create(
  title: "Running has changed my life and they warned me",
  content: "After trying a lot of different therapies to improve my health, I think I finally found what I neede. It is called running. Higly recomended.",
  membership_id: membership3.id
)

Post.create(
  title: "What a great training session",
  content: "Today, despite the cold weather conditions; I went for a 10k run",
  membership_id: membership3.id
)


Post.create(
  title: "Great podcast for runners",
  content: "Loved listening to the Mottiv podcast during my run, super good tips to avoid injuries and, if you happen to have any, how to overcome them"
  membership_id: membership2.id
)

Post.create(
  title: "Another great podcast to run long distances",
  content: "I recommend you guys Darknet Diaries, it is a great podcast about crime and technology"
  membership_id: membership2.id
)

Post.create(
  title: "Back pain update",
  content: "My back pain has gotten much better since I joined my swimming group. I also love the coffee after the trainning session!",
  membership_id: membership5.id
)

Post.create(
  title: "Swimming the best therapy",
  content: "I have fallen in love with swimming",
  membership_id: membership5.id
)






#Comments
# comment1 = Comment.new(
#   content:,
#   membership_id:,
#   post_id:
# )
# comment1.save


#Projects
project1 = Project.new(
  title: "Triathlon 2023",
  description: "Ironman Venice in May 2023",
  user_id: user1.id
)
project1.save

project2 = Project.new(
  title: "Yoga",
  description: "Getting into yoga for the first time. Planning to do at least 2 sessions a week",
  user_id: user2.id
)
project2.save

project3 = Project.new(
  title: "Swimming",
  description: "My doctor suggested swimming as an alternative to treat my back pain",
  user_id: user2.id
)
project3.save

project4 = Project.new(
  title: "Running",
  description: "Returning finally to the running world",
  user_id: user2.id
)
project4.save

project5 = Project.new(
  title: "Cycling",
  description: "Missing cycling so much that I cannot wait to go out as often as possible",
  user_id: user2.id
)
project5.save



#Goals
goal1 = Goal.new(
  title: "Running",
  description: "Getting into yoga for the first time. Planning to do at least 2 sessions a week",
  end_date: '2023-10-11',
  status: true,
  project_id: 4,
)
goal1.save

goal1 = Goal.new(
  title: "Swimming",
  description: "I need to go swimming, at least, twice a week",
  end_date: '2023-12-31',
  status: true,
  project_id: 3,
)
goal1.save

goal1 = Goal.new(
  title: "Cycling",
  description: "I want to go cycling 20k twice a week",
  end_date: '2023-09-10',
  status: true,
  project_id: 5,
)
goal1.save

goal1 = Goal.new(
  title: "Yoga",
  description: "I and doing yoga everyday",
  end_date: '2023-01-01',
  status: true,
  project_id: 2,
)
goal1.save

goal1 = Goal.new(
  title: "Triathlon 2023",
  description: "Go for a 5 to 7k run every single day",
  end_date: '2023-12-15',
  status: true,
  project_id: 1,
)
goal1.save




# Logs
# log1 = Log.new(
#   content: "New log",
#   goal_id: 2,
# )__
# log1.save
