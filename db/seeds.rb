# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"
p "Cleaning the db"
Buddy.destroy_all
Booking.destroy_all
User.destroy_all
user = User.create!(email: "email@gmail.com", password: "123456")
##◙booking = Booking.create!(user_id: "current_user", start_date: "18/11/2024", end_date: "19/11/2024", address: "21 rue des Capucins, 69001 Lyon")

p "Creating Buddies"
buddy = Buddy.new(first_name: "Gordon", last_name: "Blue", email: "gordonbleu@gmail.com", skill: "Chef", description: "Taste wriggler : Meet Gordon, a culinary wizard whose kitchen is a battlefield of sizzling pans, flying herbs, and occasional flour explosions.", address: "Lille", price: 250, user: user)
file = URI.parse("https://ca.slack-edge.com/T02NE0241-U07RCRFBKEU-6b2c24c0f974-512").open
buddy.image.attach(io: file, filename: "ramsay.jpg", content_type: "image/jpg")
buddy.save!

buddy1 = Buddy.new(first_name: "Amélie", last_name: "Lens", email: "amelielens@gmail.com", skill: "DJ", description: "Meet Amélie, the master of beats and vibes, who turns every playlist into a journey through sound. Armed with a mixing deck and a killer sense of rhythm, they can make even the shyest wallflower bust a move. ", address: "Paris", price: 700, user: user)
file1 = URI.parse("https://avatars.githubusercontent.com/u/183085924?v=4").open
buddy1.image.attach(io: file1, filename: "amelie.jpg", content_type: "image/jpg")
buddy1.save!

buddy2 = Buddy.new(first_name: "Ken",last_name: "Sanbarbie", email: "ken@gmail.com", skill: "Hottie", description: "Meet Ken, the human embodiment of a motivational playlist and the sworn enemy of snooze buttons everywhere. Whether it’s lifting heavy, running far, or mastering the perfect burpee, they train with the determination of a superhero preparing for battle.", address: "Grenoble", price: 150, user: user)
file2 = URI.parse("https://avatars.githubusercontent.com/u/149679054?v=4").open
buddy2.image.attach(io: file2, filename: "ken.jpg", content_type: "image/jpg")
buddy2.save!

buddy3 = Buddy.new(first_name: "Bozo",last_name: "Leclown", email: "bozo@gmail.com", skill: "Clown", description: "Meet Bozo, the band’s official chaos coordinator and resident comedian. Armed with quick wit, terrible (but hilarious) puns, and a knack for perfectly-timed sound effects, they keep everyone laughing—even during the most stressful rehearsals.", address: "Lyon", price: 100, user: user)
file3 = URI.parse("https://avatars.githubusercontent.com/u/184088292?v=4").open
buddy3.image.attach(io: file3, filename: "bozo.jpg", content_type: "image/jpg")
buddy3.save!

buddy4 = Buddy.new(first_name: "Joe",last_name: "Letaxi", email: "jesuistonsam@gmail.com", skill: "Taxi", description: "Meet Joe, the self-appointed cruise director of your squad, always rallying the troops for adventures—just never on time. Their calendar is a masterpiece of overbooking, and their catchphrase is, “I’m five minutes away!” (Translation: they’re still picking out shoes.)", address: "Reims", price: 50, user: user)
file4 = URI.parse("https://avatars.githubusercontent.com/u/111518744?v=4").open
buddy4.image.attach(io: file4, filename: "joe.jpg", content_type: "image/jpg")
buddy4.save!

buddy5 = Buddy.new(first_name: "Doodie",last_name: "Doo", email: "doodietatoo@gmail.com", skill: "Tattoo Artist", description: "Meet Doodie, part-time ink slinger, full-time artist, and walking sketchbook of cool ideas. Armed with a needle and an endless supply of creativity, they turn bare skin into masterpieces that tell stories, spark conversations, or just look plain awesome. Their vibe is a perfect mix of edgy and chill, with a side of “trust me, this is going to look amazing.”", address: "Nice", price: 150, user: user)
file5 = URI.parse("https://avatars.githubusercontent.com/u/114289631?v=4").open
buddy5.image.attach(io: file5, filename: "doodie.jpg", content_type: "image/jpg")
buddy5.save!


buddy6 = Buddy.new(first_name: "Chat GPT",last_name: "OpenAI",email: "leemiller@gmail.com", skill: "Web Dev", description: "Meet Chat GPT, the coding rookie with big dreams and a knack for making websites that (mostly) work. Armed with caffeine, a trusty laptop, and a stack of YouTube tutorials, they’re bravely navigating the wild jungle of HTML, CSS, and JavaScript. Sure, their code might break occasionally (okay, often), but their enthusiasm is unbreakable!", address: "Rue des Arts", price: 100, user: user)
file6 = URI.parse("https://avatars.githubusercontent.com/u/184087991?v=4").open
buddy6.image.attach(io: file6, filename: "lee.jpg", content_type: "image/jpg")
buddy6.save!

buddy7 = Buddy.new(first_name: "Freud", last_name: "Sigmund", email: "ouiouitonami@gmail.com", skill: "Psy", description: "Meet Freud, the group’s resident therapist, secret keeper, and all-around emotional rock. With ears sharper than a hawk’s and a heart bigger than their Spotify playlist, they’re always ready to lend a listening ear—no judgment, just good vibes and the occasional perfect advice.", address: "Toulouse", price: 1, user: user)
file7 = URI.parse("https://avatars.githubusercontent.com/u/157475289?v=4").open
buddy7.image.attach(io: file7, filename: "oui.jpg", content_type: "image/jpg")
buddy7.save!

p "Finished"
p "#{Buddy.count} buddies"
