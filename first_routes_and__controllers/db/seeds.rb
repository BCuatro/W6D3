# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create!(username: 'gaberules')
u2 = User.create!(username: 'ericdroolz')
u3 = User.create!(username: 'aycelikeshats')
u4 = User.create!(username: 'victorgone')
u5 = User.create!(username: 'applesauce')
users = [u1, u2, u3, u4, u5]

Artwork.destroy_all
a1 =  Artwork.create!(title: 'Apple of my Eye', artist_id: u3.id, image_url: 'https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
a2 =  Artwork.create!(title: 'Pears in Space', artist_id: u3.id, image_url: 'https://images.pexels.com/photos/1114690/pexels-photo-1114690.jpeg?auto=compress&cs=tinysrgb&w=800')
a3 =  Artwork.create!(title: 'Hello World', artist_id: u3.id, image_url: 'https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
a4 =  Artwork.create!(title: "Ayce's most amazing Hat", artist_id: u1.id, image_url: 'https://images.pexels.com/photos/1408221/pexels-photo-1408221.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
a5 =  Artwork.create!(title: 'Big Cow in the City', artist_id: u2.id, image_url: 'https://images.pexels.com/photos/3660527/pexels-photo-3660527.jpeg?auto=compress&cs=tinysrgb&w=800')
a6 =  Artwork.create!(title: 'Death', artist_id: u4.id, image_url: 'https://images.pexels.com/photos/310452/pexels-photo-310452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
a7 =  Artwork.create!(title: 'Where the wild things code', artist_id: u2.id, image_url: 'https://images.pexels.com/photos/1072179/pexels-photo-1072179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
a8 =  Artwork.create!(title: 'Pikachu', artist_id: u1.id, image_url: 'https://images.pexels.com/photos/3293148/pexels-photo-3293148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
a9 = Artwork.create!(title: 'My Kin Ka fan fiction', artist_id: u4.id, image_url: 'https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=800')
a10 = Artwork.create!(title: 'Garbage', artist_id: u5.id, image_url: 'https://images.pexels.com/photos/3745234/pexels-photo-3745234.jpeg')
artworks = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10]

ArtworkShare.destroy_all
u1a1 = ArtworkShare.create!(viewer_id: 1, artwork_id: 1)
u1a2 = ArtworkShare.create!(viewer_id: 1, artwork_id: 2)
u1a3 = ArtworkShare.create!(viewer_id: 1, artwork_id: 3)
u1a4 = ArtworkShare.create!(viewer_id: 1, artwork_id: 4)
u2a1 = ArtworkShare.create!(viewer_id: 2, artwork_id: 1)
u2a2 = ArtworkShare.create!(viewer_id: 2, artwork_id: 2)
u2a3 = ArtworkShare.create!(viewer_id: 2, artwork_id: 3)
u2a4 = ArtworkShare.create!(viewer_id: 2, artwork_id: 4)
u3a1 = ArtworkShare.create!(viewer_id: 3, artwork_id: 1)
u3a2 = ArtworkShare.create!(viewer_id: 3, artwork_id: 2)
u3a3 = ArtworkShare.create!(viewer_id: 3, artwork_id: 3)
u3a4 = ArtworkShare.create!(viewer_id: 3, artwork_id: 4)
u4a1 = ArtworkShare.create!(viewer_id: 4, artwork_id: 1)
u4a2 = ArtworkShare.create!(viewer_id: 4, artwork_id: 2)
u4a3 = ArtworkShare.create!(viewer_id: 4, artwork_id: 3)
u4a4 = ArtworkShare.create!(viewer_id: 4, artwork_id: 4)
u5a1 = ArtworkShare.create!(viewer_id: 5, artwork_id: 1)
u5a2 = ArtworkShare.create!(viewer_id: 5, artwork_id: 2)
u5a3 = ArtworkShare.create!(viewer_id: 5, artwork_id: 3)
u5a4 = ArtworkShare.create!(viewer_id: 5, artwork_id: 4)
