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
User.destroy_all
user = User.create!(email: "email@gmail.com", password: "123456")

p "Creating Buddies"
buddy = Buddy.new(first_name: "Gordon", last_name: "Bleu", email: "gordonbleu@gmail.com", skill: "Cuisinier", description: "Frétilleur de Papilles", address: "Buckingham Palace", price: 250, user: user)
file = URI.parse("https://greatcanadian.com/wp-content/uploads/2023/08/Gordon-Ramsay-PR-1-1.jpg").open
buddy.image.attach(io: file, filename: "ramsay.jpg", content_type: "image/jpg")
buddy.save!

buddy1 = Buddy.new(first_name: "Amélie", last_name: "Lens", email: "amelielens@gmail.com", skill: "Dj", description: "Je vais te faire bouger le popotin comme personnee", address: "Tomorrow Land", price: 700, user: user)
file1 = URI.parse("https://i.ytimg.com/vi/oCbUZ9X5Gkw/hqdefault.jpg?v=64d2567c").open
buddy1.image.attach(io: file1, filename: "amelie.jpg", content_type: "image/jpg")
buddy1.save!

buddy2 = Buddy.new(first_name: "Ken",last_name: "Sanbarbie", email: "ken@gmail.com", skill: "Beau Gosse", description: "Par mon physique avantageux je vous met en lumière le temps de la location", address: "Barbieland", price: 150, user: user)
file2 = URI.parse("https://images.mattel.net/image/upload/c_scale,f_auto,w_360/shop-emea-prod/products/noixvpqz2dpcxcbmw63q_d277f418-345e-49d9-bb64-6c4140656262.jpg").open
buddy2.image.attach(io: file2, filename: "ken.jpg", content_type: "image/jpg")
buddy2.save!

buddy3 = Buddy.new(first_name: "Bozo",last_name: "Leclown", email: "bozo@gmail.com", skill: "Clown", description: "j'anime les soirées comme personne, fin blagueur rigolade assurée", address: "Cirque Medrano", price: 100, user: user)
file3 = URI.parse("https://www.le-geant-de-la-fete.com/26127-large_default/masque-de-visage-clown-tueur.jpg").open
buddy3.image.attach(io: file3, filename: "bozo.jpg", content_type: "image/jpg")
buddy3.save!

buddy4 = Buddy.new(first_name: "Joe",last_name: "Letaxi", email: "jesuistonsam@gmail.com", skill: "Taxi", description: "Celui qui conduit c'est celui qui ne boit pas", address: "Sur la route", price: 50, user: user)
file4 = URI.parse("https://media.gettyimages.com/id/85647681/fr/photo/taxi-driver.jpg?s=612x612&w=gi&k=20&c=7ZAVR1zmMa6m1lDU_2w8-1AdlRjdQVIPYGmX7avvh_g=
").open
buddy4.image.attach(io: file4, filename: "joe.jpg", content_type: "image/jpg")
buddy4.save!

buddy5 = Buddy.new(first_name: "Doodie",last_name: "Doo", email: "doodietatoo@gmail.com", skill: "Tatoueu(se)r", description: "Tatoueuse qui tatoue mieux que ton ex ne t’aimait !", address: "rue de l'aiguille", price: 150, user: user)
file5 = URI.parse("https://lesnanasdpaname.com/wp-content/uploads/2020/11/neco-5439-scaled.jpg").open
buddy5.image.attach(io: file5, filename: "doodie.jpg", content_type: "image/jpg")
buddy5.save!

buddy6 = Buddy.new(first_name: "Lee",last_name: "Miller",email: "leemiller@gmail.com", skill: "Photographe/Vidéastre", description: "J'immortalise tout vos evenements", address: "Rue des Arts", price: 100, user: user)
file6 = URI.parse("https://www.efet.fr/ecole-de-photographie/Qualites-photographe.jpg").open
buddy6.image.attach(io: file6, filename: "lee.jpg", content_type: "image/jpg")
buddy6.save!

buddy7 = Buddy.new(first_name: "Oui", last_name: "Oui", email: "ouiouitonami@gmail.com", skill: "Poto", description: "Une oreille attentive, un calineur hors pair", address: "Rue de l'amitié", price: 1, user: user)
file7 = URI.parse("https://media.istockphoto.com/id/1369773734/fr/photo/photo-de-deux-amis-se-tenant-la-main-se-soutenant-mutuellement.jpg?s=612x612&w=0&k=20&c=iWqrIn3dJl0vREkdmMiSOdQOEZO7fcpoV9rXbX0iIIY=").open
buddy7.image.attach(io: file7, filename: "oui.jpg", content_type: "image/jpg")
buddy7.save!

p "Finished"
p "#{Buddy.count} buddies"
