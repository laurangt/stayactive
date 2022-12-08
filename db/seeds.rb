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
Comment.destroy_all
puts "All Comment Destroy"
Project.destroy_all
puts "All Projects Destroy"
Goal.destroy_all
puts "All Goal Destroy"
Log.destroy_all
puts "All Logs Destroy"

# Users

file_user1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065688/jorrit_wsk2nd.jpg")
user1 = User.new(
  email: "jorrit@gmail.com",
  password: "123123",
  username: "Jorrit",
  bio: "I'm a Dutch 30 year old bicycle lover that wants to meet people to go out and sort out Madrid's traffic while we have some fun. If I can find people who know something about coding, rain and futbol, it would be even better."
)
user1.photo.attach(io: file_user1, filename: "nes.png", content_type: "image/png")
user1.save!
puts "User 1 saved: #{user1}"

file_user2 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065690/maria_dvrljb.jpg")
user2 = User.new(
  email: "maria@gmail.com",
  password: "123123",
  username: "Maria",
  bio: "Hey everyone, follow me on my triathlon journey."
)
user2.photo.attach(io: file_user2, filename: "nes.png", content_type: "image/png")
user2.save!
puts "User 2 saved: #{user2}"

file_user3 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065690/vito_rzudtx.jpg")
user3 = User.new(
  email: "vito@gmail.com",
  password: "123123",
  username: "Vitotalian",
  bio: "I'm Vito, a Venezuelan and Italian 30 year old guy that has just moved to Madrid. I currently have a very stressing job, so I need to exercise and, at the same time, meet local people"
)
user3.photo.attach(io: file_user3, filename: "nes.png", content_type: "image/png")
user3.save!
puts "User 3 saved: #{user3}"

file_user4 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065687/alberto_vmpgza.jpg")
user4 = User.new(
  email: "alberto@gmail.com",
  password: "123123",
  username: "Mexiberto",
  bio: "I'm Alberto. I love to exercise, but it is very difficult for me to be consistent at working out."
)
user4.photo.attach(io: file_user4, filename: "nes.png", content_type: "image/png")
user4.save!

file_user5 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065688/leonidas_xfdgw2.jpg")
user5 = User.new(
  email: "leo@gmail.com",
  password: "123123",
  username: "Leotroiscents",
  bio: "Hello world, I'm Leo. I love to food, front-end developing and my Greek romantic accent (as girls always point out). I like to find practice boxing"
)
user5.photo.attach(io: file_user5, filename: "nes.png", content_type: "image/png")
user5.save!

file_user6 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669993046/profile_pic_owc22f.jpg")
user6 = User.new(
  email: "laura@gmail.com",
  password: "123123",
  username: "laura",
  bio: "Hi, I'm Laura. I like playing tennis and going to the gym. But would love to do a triathlon soon."
)
user6.photo.attach(io: file_user6, filename: "nes.png", content_type: "image/png")
user6.save!


file_user7 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670066358/scooter_fayyfc.jpg")
user7 = User.new(
  email: "scooter@gmail.com",
  password: "123123",
  username: "scooter",
  bio: "Hi, I'm Scooter. I did a triathlon a couple of years ago, which I really loved. I still run basically every day and I love tracking and sharing my progress."
)
user7.photo.attach(io: file_user7, filename: "nes.png", content_type: "image/png")
user7.save!

file_user8 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065687/andres_w1qavn.jpg")
user8 = User.new(
  email: "andres@gmail.com",
  password: "123123",
  username: "Andres",
  bio: "."
)
user8.photo.attach(io: file_user8, filename: "nes.png", content_type: "image/png")
user8.save!

file_user9 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065688/arthur_uiye4v.jpg")
user9 = User.new(
  email: "arthur@gmail.com",
  password: "123123",
  username: "Arthur",
  bio: "I'm from Berlin and am currently training for a triathlon."
)
user9.photo.attach(io: file_user9, filename: "nes.png", content_type: "image/png")
user9.save!

file_user10 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065688/francisco_a2vqil.jpg")
user10 = User.new(
  email: "francisco@gmail.com",
  password: "123123",
  username: "Francisco",
  bio: "From Argentina."
)
user10.photo.attach(io: file_user10, filename: "nes.png", content_type: "image/png")
user10.save!

file_user11 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065689/silviu_pqj3oq.jpg")
user11 = User.new(
  email: "silviu@gmail.com",
  password: "123123",
  username: "Silviu",
  bio: "I am from Romania, play tennis and am a coding master."
)
user11.photo.attach(io: file_user11, filename: "nes.png", content_type: "image/png")
user11.save!

file_user12 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065687/carlos_nrc6wo.jpg")
user12 = User.new(
  email: "carlos@gmail.com",
  password: "123123",
  username: "Carlos",
  bio: "From Madrid."
)
user12.photo.attach(io: file_user12, filename: "nes.png", content_type: "image/png")
user12.save!

file_user13 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065689/ruben_wcykkq.jpg")
user13 = User.new(
  email: "ruben@gmail.com",
  password: "123123",
  username: "Ruben",
  bio: "Yoga keeps me calm."
)
user13.photo.attach(io: file_user13, filename: "nes.png", content_type: "image/png")
user13.save!

file_user14 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065689/ming_n4xwrs.jpg")
user14 = User.new(
  email: "ming@gmail.com",
  password: "123123",
  username: "Ming",
  bio: "I love the mountain trekking."
)
user14.photo.attach(io: file_user14, filename: "nes.png", content_type: "image/png")
user14.save!


file_user15 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670065689/felipe_rg83fw.jpg")
user15 = User.new(
  email: "felipe@gmail.com",
  password: "123123",
  username: "Felipe",
  bio: "Professional volleyball player, who also loves swimming."
)
user15.photo.attach(io: file_user15, filename: "nes.png", content_type: "image/png")
user15.save!


# Groups
file_group1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670430537/running_black_meh1bo.png")
group1 = Group.new(
  name: "Running"
)
group1.photo.attach(io: file_group1, filename: "nes.png", content_type: "image/png")
group1.save!

puts "Group1 saved: #{group1}"

file_group2 = URI.open("https://img.icons8.com/wired/64/null/leaderboard.png")
group2 = Group.new(
  name: "Triathlon"
)
group2.photo.attach(io: file_group2, filename: "nes.png", content_type: "image/png")
group2.save!
puts "Group2 saved: #{group2}"

file_group3 = URI.open("https://img.icons8.com/wired/64/null/swimming.png")
group3 = Group.new(
  name: "Swimming"
)
group3.photo.attach(io: file_group3, filename: "nes.png", content_type: "image/png")
group3.save!

file_group4 = URI.open("https://img.icons8.com/wired/64/null/trekking.png")
group4 = Group.new(
  name: "Trekking"
)
group4.photo.attach(io: file_group4, filename: "nes.png", content_type: "image/png")
group4.save!

file_group5 = URI.open("https://img.icons8.com/wired/64/null/tennis.png")
group5 = Group.new(
  name: "Tennis"
)
group5.photo.attach(io: file_group5, filename: "nes.png", content_type: "image/png")
group5.save!

file_group6 = URI.open("https://img.icons8.com/wired/64/null/sleeping-mat.png")
group6 = Group.new(
  name: "Yoga"
)
group6.photo.attach(io: file_group6, filename: "nes.png", content_type: "image/png")
group6.save!

file_group7 = URI.open("https://img.icons8.com/wired/64/null/cycling-road.png")
group7 = Group.new(
  name: "Cycling"
)
group7.photo.attach(io: file_group7, filename: "nes.png", content_type: "image/png")
group7.save!

file_group8 = URI.open("https://img.icons8.com/wired/64/null/bowling.png")
group8 = Group.new(
  name: "Bowling"
)
group8.photo.attach(io: file_group8, filename: "nes.png", content_type: "image/png")
group8.save!


# Memberships
membership1 = Membership.create!(
  group_id: group2.id, # triathlon
  user_id: user2.id # maria
)

membership2 = Membership.create!(
  group_id: group7.id, # cycling
  user_id: user1.id # jorrit
)

membership3 = Membership.create!(
  group_id: group7.id, # cycling
  user_id: user3.id # vito
)

membership4 = Membership.create!(
  group_id: group1.id, # running
  user_id: user4.id # alberto
)

membership5 = Membership.create!(
  group_id: group5.id, # tennis
  user_id: user1.id #jorrit
)

membership6 = Membership.create!(
  group_id: group1.id, # running
  user_id: user5.id # leo
)

membership7 = Membership.create!(
  group_id: group5.id, # tennis
  user_id: user5.id # leo
)

membership8 = Membership.create!(
  group_id: group1.id, # running
  user_id: user7.id # scooter
)

membership9 = Membership.create!(
  group_id: group3.id, # swimming
  user_id: user3.id # vito
)

membership10 = Membership.create!(
  group_id: group2.id, # triathlon
  user_id: user8.id # andres
)

membership11 = Membership.create!(
  group_id: group2.id, # triathlon
  user_id: user9.id # arthur
)

membership12 = Membership.create!(
  group_id: group2.id, # triathlon
  user_id: user10.id # francisco
)

membership13 = Membership.create!(
  group_id: group2.id, # triathlon
  user_id: user7.id # scooter
)

membership14 = Membership.create!(
  group_id: group5.id, # tennis
  user_id: user11.id # silviu
)

membership15 = Membership.create!(
  group_id: group7.id, # cycling
  user_id: user12.id # carlos
)

membership16 = Membership.create!(
  group_id: group6.id, # yoga
  user_id: user13.id # ruben
)

membership17 = Membership.create!(
  group_id: group6.id, # yoga
  user_id: user5.id # leo
)

membership18 = Membership.create!(
  group_id: group4.id, # trekking
  user_id: user4.id # alberto
)

membership19 = Membership.create!(
  group_id: group4.id, # trekking
  user_id: user14.id # ming
)

membership20 = Membership.create!(
  group_id: group3.id, # swimming
  user_id: user15.id # felipe
)

membership21 = Membership.create!(
  group_id: group6.id, # yoga
  user_id: user2.id # maria
)

# Post
post1 = Post.create!(
  title: "Not an easy journey",
  content: "Everything worth doing in life is hard!",
  membership_id: membership2.id
)

post3 = Post.create!(
  title: "It was just a bad day, not a bad life",
  content: "This was a very stressfull week. I wanted to stay home and rest, however; my running team motivated me to finish a great running session",
  membership_id: membership4.id
)
puts "Post3 saved: #{post3}"

post4 = Post.create!(
  title: "Rain did not stop us",
  content: "The weather was not the best but my buddies made this training worth it",
  membership_id: membership2.id
)

post5 = Post.create!(
  title: "Nada como salir a rodar un sabado por la mañana",
  content: "Felt so unmotivated today, but this community made me get out of bed and do a cycling sess",
  membership_id: membership3.id
)

post6 = Post.create!(
  title: "Cycling in Madrid Rio is such a good idea",
  content: "My group friends suggested going to Madrid Rio and I think it was a great idea. Such a beatiful place",
  membership_id: membership2.id
)
puts "Post6 saved: #{post6}"

post7 = Post.create!(
  title: "Running has changed my life and they warned me",
  content: "After trying a lot of different therapies to improve my health, I think I finally found what I need. It is called running. Higly recomended.",
  membership_id: membership4.id
)

post8 = Post.create!(
  title: "What a great training session",
  content: "Second Marathon:checked",
  membership_id: membership8.id
)

post9 = Post.create!(
  title: "Great podcast for runners",
  content: "Loved listening to the Mottiv podcast during my run, super good tips to avoid injuries and, if you happen to have any, how to overcome them",
  membership_id: membership1.id
)

post10 = Post.create!(
  title: "Another great podcast to run long distances",
  content: "I recommend you guys Darknet Diaries, it is a great podcast about crime and technology",
  membership_id: membership6.id
)

file_post11 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670087226/tennis_family_ezffte.jpg")
post11 = Post.new(
  title: "Tennis with the family",
  content: "Wonderful afternoon playing tennis with my wife and kids.",
  membership_id: membership5.id
)
post11.photo.attach(io: file_post11, filename: "nes.png", content_type: "image/png")
post11.save!

file_post12 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670087226/sunrise_qorztn.jpg")
post12 = Post.new(
  title: "Sunrise run",
  content: "Morning run at Temple of Debod, so peaceful and beautiful views!",
  membership_id: membership10.id
)
post12.photo.attach(io: file_post12, filename: "nes.png", content_type: "image/png")
post12.save!

post2 = Post.create!(
  title: "Triathlon, here I go",
  content: "Managed to finish the first week of triathlon training. What a great friday completing a 10km run!",
  membership_id: membership1.id
)

post13 = Post.create!(
  title: "2 months left",
  content: "Really proud of sticking to my training for the last 2months, I'm really looking forward to race day and drinking the well-deserved free beer at the end of it. ",
  membership_id: membership11.id
)

post2 = Post.create!(
  title: "Triathlon, here I go",
  content: "Managed to finish my 2nd month of triathlon training. What a great friday completing a 16km run!",
  membership_id: membership1.id
)

post14 = Post.create!(
  title: "Checkout Movimiento del Norte",
  content: "Thanks Jorrit for doing my running and cycling biomechanical analysis. Feel so much better!",
  membership_id: membership12.id
)

post15 = Post.create!(
  title: "Swimming for back pain",
  content: "My doctor recommended I should incorporate swimming in order to relief my back pain. Works wonders!",
  membership_id: membership9.id
)

file_post16 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670496192/scooter_triathlon_ehnf8s.jpg")
post16 = Post.create!(
  title: "Keep going!",
  content: "I know from experience triathlon training is hard, but keep going guys. You can do it!",
  membership_id: membership13.id
)
post16.photo.attach(io: file_post16, filename: "nes.png", content_type: "image/png")
post16.save!

post16 = Post.create!(
  title: "Tennis meet up",
  content: "Hi everyone, anyone in Madrid intermediate level, wanna play a match this weekend?",
  membership_id: membership14.id
)

post17 = Post.create!(
  title: "Are you a beginner at yoga?",
  content: "Trust the process, try implementing yoga 2x week for a month and you'll see how relaxed and good you feel.",
  membership_id: membership16.id
)

post17 = Post.create!(
  title: "Yoga for stress relief",
  content: "My daily morning yoga session keeps me focused and ready for the day.",
  membership_id: membership17.id
)

post17 = Post.create!(
  title: "Always fear regret, not failure",
  content: "Almost a year since I started this wonderful journey. My knee pain is finally gone and I have learned how to breath better.",
  membership_id: membership16.id
)

post17 = Post.create!(
  title: "Wonderful week in the mountains",
  content: "Had a wonderful holiday mountain trekking with my wife.",
  membership_id: membership18.id
)

file_post19 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1670087226/trekking_mountain_jogqnh.jpg")
post19 = Post.new(
  title: "Peaceful weekend",
  content: "Fresh air in the mountains hits different. Feel fresh and ready to rock the week!",
  membership_id: membership19.id
)
post19.photo.attach(io: file_post19, filename: "nes.png", content_type: "image/png")
post19.save!

post20 = Post.create!(
  title: "Swimming in Madrid",
  content: "Love going for swims during the off-season. Really recommend the pool at GoFit in Madrid City.",
  membership_id: membership20.id
)

post21 = Post.create!(
  title: "3 things I wish I knew before I started Yoga",
  content: "
  - It is not just about flexibility
  - The physical benefits are only the beginning
  - I would be hooked",
  membership_id: membership21.id
)

post22 = Post.create!(
  title: "Listen to your body",
  content: "Now that I am into Yoga I have realized how important it is to listen to your body.",
  membership_id: membership21.id
)

post23 = Post.create!(
  title: "My mind is more focused than ever",
  content: "Maintaining focus when your body is under stress has enormous value in the real world.",
  membership_id: membership17.id
)

#Comments
Comment.create!(
  content: "Yes totally agree, my favourite place to cycle in the city.",
  membership_id: membership3.id,
  post_id: post6.id
)

Comment.create!(
  content: "Go on Vito! I felt the same this morning and thanks to this community I felt like I couldn't let anyone down, so I went for a ride",
  membership_id: membership15.id,
  post_id: post5.id
)

#Projects
project1 = Project.new(
  title: "Triathlon 2023",
  description: "Ironman Venice in May 2023",
  user_id: user2.id
)
project1.save!

project2 = Project.new(
  title: "Yoga",
  description: "Getting into yoga for the first time.",
  user_id: user2.id
)
project2.save!

project3 = Project.new(
  title: "Swimming",
  description: "My doctor suggested swimming as an alternative to treat my back pain",
  user_id: user3.id
)
project3.save!

project4 = Project.new(
  title: "Running",
  description: "Returning finally to the running world",
  user_id: user4.id
)
project4.save!

project5 = Project.new(
  title: "Running",
  description: "Getting as fit as i used to be",
  user_id: user5.id
)
project5.save!

project6 = Project.new(
  title: "Running",
  description: "Distance 21 kilometers",
  user_id: user6.id
)
project6.save!

project7 = Project.new(
  title: "Cycling",
  description: "Distance 90 kilometers",
  user_id: user6.id
)
project7.save!

project8 = Project.new(
  title: "Swimming",
  description: "1,90 kilometers",
  user_id: user6.id
)
project8.save!


#Goals
goal1 = Goal.new(
  title: "Yoga training",
  description: "Planning to do at least 2 sessions a week.",
  end_date: '31-01-2023',
  project_id: project2.id
)
goal1.save!

goal2 = Goal.new(
  title: "Swimming",
  description: "Swimming at least twice a week.",
  end_date: '01-03-2023',
  project_id: project3.id
)
goal2.save!

goal3 = Goal.new(
  title: "Training",
  description: "min 2x week at least 10km.",
  end_date: '01-04-2023',
  project_id: project5.id
)
goal3.save!

goal4 = Goal.new(
  title: "Stretching session after workout everyday",
  description: "Lets improve flexibility and strech with yoga positions after my workout.",
  end_date: '28-02-2023',
  project_id: project2.id
)
goal4.save!

goal5 = Goal.new(
  title: "21 day challenge to improve breathing",
  description: "Start the 21 day challenge of exercises that help improve lung capacity.",
  end_date: '30-12-2022',
  project_id: project2.id
)
goal5.save!

goal6 = Goal.new(
  title: "Combination of exercises on the first 3 weeks",
  description: "
  Workout No. 1: (run 1 minute, walk 1 minute) five times, then ride a bike for 30 minutes at an easy, conversational intensity. (Zone 1 to 2 of bpm)

  Workout No. 2: (run 1 minute, walk 1 minute) seven or eight times, then bike ride for 30 minutes at an easy, conversational intensity
  ",
  end_date: '30-01-2023',
  project_id: project1.id
)
goal6.save!

goal7 = Goal.new(
  title: "Learning how to change a bike tire",
  description: "Since I do not want a flat, I will start looking up YouTube videos and practicing with my own bike.",
  end_date: '10-12-2022',
  status: true,
  project_id: project1.id
)
goal7.save!

goal8 = Goal.new(
  title: "Eating on the bike and the run",
  description: "Doing plenty of practice sessions with foods I considering eating and drinking on race day to make sure it sits well in my stomach.",
  end_date: '30-12-2022',
  project_id: project1.id
)
goal8.save!

goal9 = Goal.new(
  title: "Practise in open water",
  description: "Start felling comfortable swimming in open water and doing, at least.",
  end_date: '01-12-2023',
  project_id: project1.id
)
goal9.save!

goal10 = Goal.new(
  title: "Limit the use of social media",
  description: "During the complete journey, I will limit or if posible; quit social media so I can completely focus on my training sessions and avoid anxiety.",
  end_date: '10-12-2022',
  status: true,
  project_id: project1.id
)
goal10.save!

goal11 = Goal.new(
  title: "First running goal",
  description: "Run 2-3x run",
  end_date: '01-12-2023',
  project_id: project6.id
)
goal11.save!


goal12 = Goal.new(
  title: "Pace",
  description: "Reaching 5min/km",
  end_date: '01-12-2023',
  project_id: project6.id
)
goal12.save!


log1 = Log.new(
  content: "I have limited the my usage to 20 minutes a day maximum",
  goal_id: goal10.id
)
log1.save!

log2 = Log.new(
  content: "I have understood that quitting for a while is the answer. Bye, bye Instagram",
  goal_id: goal10.id
)
log2.save!

log3 = Log.new(
  content: "I managed to change my first tire. I will try to do it faster the next time",
  goal_id: goal7.id
)
log3.save!

log4 = Log.new(
  content: "Today I was able to changed the tire under 5 minutes",
  goal_id: goal7.id
)
log4.save!

log5 = Log.new(
  content: "Today I start my onlline course. I really want to improve my lung capacity that has not been the same after covid",
  goal_id: goal5.id
)
log5.save!

log6 = Log.new(
  content: "I pushed my self to complete the stretching session altough I was really tired",
  goal_id: goal4.id
)
log6.save!

log7 = Log.new(
  content: "I went to the lake and swam for 15 minutes",
  goal_id: goal9.id
)
log7.save!
