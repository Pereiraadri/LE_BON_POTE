# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Buddy.create(friend_name: "Gordon Bleu",friend_mail: "gordonbleu@gmail.com", skill: "Cuisinier", description: "Frétilleur de Papilles", image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.menshealth.com%2Fuk%2Ffitness%2Fa62043427%2Fgordon-ramsay-mens-health%2F&psig=AOvVaw1eTWrCvowGCdl3QPJQAx3i&ust=1732025932238000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCID-ysiJ5okDFQAAAAAdAAAAABAE", rating: 7, address: "Buckingham Palace", price: "230$/hour", avalaible: true)

Buddy.create(friend_name: "Amélie Lens",friend_mail: "amelielens@gmail.com", skill: "Dj", description: "Je vais te faire bouger le popotin comme personnee", image: "https://i.ytimg.com/vi/oCbUZ9X5Gkw/hqdefault.jpg?v=64d2567c", rating: 9, address: "Tomorrow Land", price: "700$/hour", avalaible: true)

Buddy.create(friend_name: "Ken Sanbarbie",friend_mail: "ken@gmail.com", skill: "Beau Gosse", description: "Par mon physique avantageux je vous met en lumière le temps de la location", image: "https://images.mattel.net/image/upload/c_scale,f_a…xcbmw63q_d277f418-345e-49d9-bb64-6c4140656262.jpg", rating: 8, address: "Barbieland", price: "150$/hour", avalaible: true)

Buddy.create(friend_name: "Mano",friend_mail: "manolerigolo@gmail.com", skill: "Clown", description: "j'anime les soirées comme personne, fin blagueur rigolade assurée", image: "https://www.le-geant-de-la-fete.com/26127-large_default/masque-de-visage-clown-tueur.jpg", rating: 8, address: "Cirque Medrano", price: "100$/hour", avalaible: true)

Buddy.create(friend_name: "Joe Letaxi",friend_mail: "jesuistonsam@gmail.com", skill: "Taxi", description: "Celui qui conduit c'est celui qi ne boit pas", image: "https://media.gettyimages.com/id/85647681/fr/photo/taxi-driver.jpg?s=612x612&w=gi&k=20&c=7ZAVR1zmMa6m1lDU_2w8-1AdlRjdQVIPYGmX7avvh_g=
", rating: 7, address: "Sur la route", price: "50$/hour", avalaible: true)

Buddy.create(friend_name: "Doodie",friend_mail: "doodietatoo@gmail.com", skill: "Tatoueu(se)r", description: "Tatoueuse qui tatoue mieux que ton ex ne t’aimait !", image: "https://lesnanasdpaname.com/wp-content/uploads/2020/11/neco-5439-scaled.jpg", rating: 7, address: "rue de l'aiguille", price: "150$/hour", avalaible: true)

Buddy.create(friend_name: "Lee Miller",friend_mail: "leemiller@gmail.com", skill: "Photographe/Vidéastre", description: "J'immortalise tout vos evenements", image: "https://www.efet.fr/ecole-de-photographie/Qualites-photographe.jpg", rating: 9, address: "Rue des Arts", price: "100$/hour", avalaible: true)

Buddy.create(friend_name: "Oui-Oui",friend_mail: "ouiouitonami@gmail.com", skill: "Poto", description: "une oreille attentive, un calineur hors pair", image: "https://media.istockphoto.com/id/1369773734/fr/photo/photo-de-deux-amis-se-tenant-la-main-se-soutenant-mutuellement.jpg?s=612x612&w=0&k=20&c=iWqrIn3dJl0vREkdmMiSOdQOEZO7fcpoV9rXbX0iIIY= ", rating: 8, address: "Rue de l'amitié", price: "1$/hour", avalaible: true)
