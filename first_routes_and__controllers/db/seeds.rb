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
u1a1 = ArtworkShare.create!(viewer_id: u1.id, artwork_id: a1.id)
u1a2 = ArtworkShare.create!(viewer_id: u1.id, artwork_id: a2.id)
u1a3 = ArtworkShare.create!(viewer_id: u1.id, artwork_id: a3.id)
u1a4 = ArtworkShare.create!(viewer_id: u1.id, artwork_id: a4.id)
u2a1 = ArtworkShare.create!(viewer_id: u2.id, artwork_id: a1.id)
u2a2 = ArtworkShare.create!(viewer_id: u2.id, artwork_id: a2.id)
u2a3 = ArtworkShare.create!(viewer_id: u2.id, artwork_id: a3.id)
u2a4 = ArtworkShare.create!(viewer_id: u2.id, artwork_id: a4.id)
u3a1 = ArtworkShare.create!(viewer_id: u3.id, artwork_id: a1.id)
u3a2 = ArtworkShare.create!(viewer_id: u3.id, artwork_id: a2.id)
u3a3 = ArtworkShare.create!(viewer_id: u3.id, artwork_id: a3.id)
u3a4 = ArtworkShare.create!(viewer_id: u3.id, artwork_id: a4.id)
u4a1 = ArtworkShare.create!(viewer_id: u4.id, artwork_id: a1.id)
u4a2 = ArtworkShare.create!(viewer_id: u4.id, artwork_id: a2.id)
u4a3 = ArtworkShare.create!(viewer_id: u4.id, artwork_id: a3.id)
u4a4 = ArtworkShare.create!(viewer_id: u4.id, artwork_id: a4.id)
u5a1 = ArtworkShare.create!(viewer_id: u5.id, artwork_id: a1.id)
u5a2 = ArtworkShare.create!(viewer_id: u5.id, artwork_id: a2.id)
u5a3 = ArtworkShare.create!(viewer_id: u5.id, artwork_id: a3.id)
u5a4 = ArtworkShare.create!(viewer_id: u5.id, artwork_id: a4.id)

Comment.destroy_all
c1 =  Comment.create!(body: 'ayce carries mace', user_id: u1.id, artwork_id: a1.id)
c2 = Comment.create!(body: 'i hate eric', user_id: u2.id, artwork_id: a1.id)
c3 = Comment.create!(body: 'this art is dumb', user_id: u3.id, artwork_id: a1.id)
c4 = Comment.create!(body: 'whatever', user_id: u1.id, artwork_id: a2.id)
c5 =  Comment.create!(body: 'kin ka is a stinka', user_id: u2.id, artwork_id: a2.id)
c6 =  Comment.create!(body: 'victor licks birds', user_id: u3.id, artwork_id: a2.id)