# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Buddy.create(first_name: "Gordon", last_name: "Bleu", email: "gordonbleu@gmail.com", skill: "Cuisinier", description: "Frétilleur de Papilles", image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.menshealth.com%2Fuk%2Ffitness%2Fa62043427%2Fgordon-ramsay-mens-health%2F&psig=AOvVaw1eTWrCvowGCdl3QPJQAx3i&ust=1732025932238000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCID-ysiJ5okDFQAAAAAdAAAAABAE", address: "Buckingham Palace", price: 250, avalaible: true)

Buddy.create(first_name: "Amélie", last_name: "Lens", email: "amelielens@gmail.com", skill: "Dj", description: "Je vais te faire bouger le popotin comme personnee", image: "https://i.ytimg.com/vi/oCbUZ9X5Gkw/hqdefault.jpg?v=64d2567c", address: "Tomorrow Land", price: 700, avalaible: true)

Buddy.create(first_name: "Ken",last_name: "Sanbarbie", email: "ken@gmail.com", skill: "Beau Gosse", description: "Par mon physique avantageux je vous met en lumière le temps de la location", image: "https://images.mattel.net/image/upload/c_scale,f_a…xcbmw63q_d277f418-345e-49d9-bb64-6c4140656262.jpg", address: "Barbieland", price: 150, avalaible: true)

Buddy.create(first_name: "Bozo",last_name: "Leclown", email: "bozo@gmail.com", skill: "Clown", description: "j'anime les soirées comme personne, fin blagueur rigolade assurée", image: "https://www.le-geant-de-la-fete.com/26127-large_default/masque-de-visage-clown-tueur.jpg", address: "Cirque Medrano", price: 100, avalaible: true)

Buddy.create(first_name: "Joe",last_name: "Letaxi", email: "jesuistonsam@gmail.com", skill: "Taxi", description: "Celui qui conduit c'est celui qi ne boit pas", image: "https://media.gettyimages.com/id/85647681/fr/photo/taxi-driver.jpg?s=612x612&w=gi&k=20&c=7ZAVR1zmMa6m1lDU_2w8-1AdlRjdQVIPYGmX7avvh_g=
", address: "Sur la route", price: 50, avalaible: true)

Buddy.create(first_name: "Doodie",last_name: "Doo", email: "doodietatoo@gmail.com", skill: "Tatoueu(se)r", description: "Tatoueuse qui tatoue mieux que ton ex ne t’aimait !", image: "https://lesnanasdpaname.com/wp-content/uploads/2020/11/neco-5439-scaled.jpg", address: "rue de l'aiguille", price: 150, avalaible: true)

Buddy.create(first_name: "Lee",last_name: "Miller",email: "leemiller@gmail.com", skill: "Photographe/Vidéastre", description: "J'immortalise tout vos evenements", image: "https://www.efet.fr/ecole-de-photographie/Qualites-photographe.jpg", address: "Rue des Arts", price: 100, avalaible: true)

Buddy.create(first_name: "Oui", last_name: "Oui", email: "ouiouitonami@gmail.com", skill: "Poto", description: "Une oreille attentive, un calineur hors pair", image: "https://media.istockphoto.com/id/1369773734/fr/photo/photo-de-deux-amis-se-tenant-la-main-se-soutenant-mutuellement.jpg?s=612x612&w=0&k=20&c=iWqrIn3dJl0vREkdmMiSOdQOEZO7fcpoV9rXbX0iIIY= ", address: "Rue de l'amitié", price: 1, avalaible: true)
