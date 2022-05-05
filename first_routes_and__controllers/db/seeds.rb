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
u6 = User.create!(username: 'kinkastinka')
u7 = User.create!(username: 'therealalan')
u8 = User.create!(username: 'thefakealan')
u9 = User.create!(username: 'alanmasters')
u10 = User.create!(username: 'bob')
users_arr = [u1, u2, u3, u4, u5, u6, u7, u8, u9, u10]

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
artworks_arr = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10]

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
c7  = Comment.create!(body: 'i hate god', user_id: u4.id, artwork_id: a1.id)
c8  = Comment.create!(body: 'god hates me', user_id: u4.id, artwork_id: a2.id)
c9 = Comment.create!(body: 'this seed', user_id: u4.id, artwork_id: a2.id)
c10 = Comment.create!(body: 'nikhil is the best member of the nuzlocke team', user_id: u4.id, artwork_id: a3.id)
c11 = Comment.create!(body: 'goodra with poison heal is broken', user_id: u5.id, artwork_id: a7.id)
c12 = Comment.create!(body: 'multiverse of madness will be cool', user_id: u5.id, artwork_id: a8.id)
c13 = Comment.create!(body: 'i hate mondays', user_id: u6.id, artwork_id: a2.id)
c14 = Comment.create!(body: 'i am garfield', user_id: u6.id, artwork_id: a4.id)
c15 = Comment.create!(body: 'rails assessment gonna be ez', user_id: u6.id, artwork_id: a5.id)
c16 = Comment.create!(body: 'rails assessment gonna be hard', user_id: u6.id, artwork_id: a9.id)
c17 = Comment.create!(body: 'nonsense comment', user_id: u7.id, artwork_id: a6.id)
c18 = Comment.create!(body: 'risk of rain 2 is a good game', user_id: u7.id, artwork_id: a6.id)
c19 = Comment.create!(body: 'pokemon is stagnating', user_id: u7.id, artwork_id: a8.id)
c20 = Comment.create!(body: 'those gen 9 starters look awful', user_id: u8.id, artwork_id: a4.id)
c21 = Comment.create!(body: 'more nonsense comment', user_id: u8.id, artwork_id: a6.id)
c22 = Comment.create!(body: 'crazy', user_id: u9.id, artwork_id: a7.id)
c23 = Comment.create!(body: 'fucking', user_id: u9.id, artwork_id: a8.id)
c24 = Comment.create!(body: 'videos', user_id: u10.id, artwork_id: a9.id)
comments_arr = [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24]


Like.destroy_all
artworks_arr.each do |artwork|
      count = 0
      cap = rand(3..10)
      while (count < cap)
            l = Like.new(likeable_id: artwork.id, likeable_type: artwork.class.name, liker_id: users_arr.sample(1).first.id)
            if l.valid?
                  l.save!
                  count += 1
            end
      end
end
comments_arr.each do |comment|
      count = 0
      cap = rand(0..2)
      while (count < cap)
            l = Like.new(likeable_id: comment.id, likeable_type: comment.class.name, liker_id: users_arr.sample(1).first.id)
            if l.valid?
                  l.save! 
                  count += 1
            end
      end
end

Collection.destroy_all
collection1 = Collection.create!(user_id: u1.id)
collection2 = Collection.create!(user_id: u1.id)
collection3 = Collection.create!(user_id: u2.id)
collection4 = Collection.create!(user_id: u3.id)
collection5 = Collection.create!(user_id: u4.id)


CollectionItem.destroy_all
c1i1 = CollectionItem.create!(collection_id: collection1.id, artwork_id: a1.id)
c1i2 = CollectionItem.create!(collection_id: collection1.id, artwork_id: a2.id)
c1i3 = CollectionItem.create!(collection_id: collection1.id, artwork_id: a3.id)
c2i1 = CollectionItem.create!(collection_id: collection2.id, artwork_id: a4.id)
c2i2 = CollectionItem.create!(collection_id: collection2.id, artwork_id: a5.id)
c2i3 = CollectionItem.create!(collection_id: collection2.id, artwork_id: a6.id)
c3i1 = CollectionItem.create!(collection_id: collection3.id, artwork_id: a1.id)
c3i2 = CollectionItem.create!(collection_id: collection3.id, artwork_id: a2.id)
c3i3 = CollectionItem.create!(collection_id: collection3.id, artwork_id: a3.id)
c4i1 = CollectionItem.create!(collection_id: collection4.id, artwork_id: a4.id)
c4i2 = CollectionItem.create!(collection_id: collection4.id, artwork_id: a5.id)
c4i3 = CollectionItem.create!(collection_id: collection4.id, artwork_id: a6.id)
c5i1 = CollectionItem.create!(collection_id: collection5.id, artwork_id: a1.id)
c5i2 = CollectionItem.create!(collection_id: collection5.id, artwork_id: a2.id)
c5i3 = CollectionItem.create!(collection_id: collection5.id, artwork_id: a3.id)

