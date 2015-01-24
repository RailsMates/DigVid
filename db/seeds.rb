User.destroy_all
Clip.destroy_all
Category.destroy_all
Friendship.destroy_all

10.times do
user = User.new
user.email = Faker::Internet.email
user.username = Faker::Internet.user_name
user.encrypted_password = 'abc'
user.password = "abc"
user.name = Faker::Name.first_name
user.gender = "Male"
i = rand(1..13)
user.avatar =  File.open("app/assets/images/avatar#{i}.jpeg")

user.save!

end
p "Users created."

Category.create(name: "Pop")
Category.create(name: "Oldies")
Category.create(name: "Heavy Sounds")
Category.create(name: "Chillout")
Category.create(name: "Rap")
Category.create(name: "Rock")
Category.create(name: "Disco")
Category.create(name: "PunkRock")

p "Categories created."

5.times do
Clip.create(URL: "https://www.youtube.com/watch?v=ZCx0X2YSd1M", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=VjHMDlAPMUw", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=W81C1VgqYnU", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=4zLfCnGVeL4", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=g4arvDxKVIo", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=x7MCbis75wk", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=8IHFVn0sv14", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=XIQNngEnKU0", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=Im8zYhFB0JA", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=d7R7q1lSZfs", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=fUis9yny_lI", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
Clip.create(URL: "https://www.youtube.com/watch?v=nCkpzqqog4k", counter: rand(0..40), created_at: (rand*30).days.ago, user_id: User.all.sample.id)
end
Clip.update_all(name: "Sample Clip Name")

30.times do
	ClipCategory.create(clip_id: Clip.all.sample.id, category_id: Category.all.sample.id)
end

100.times do
	FavoriteClip.create(clip_id: Clip.all.sample.id, user_id: User.all.sample.id)
end 

p "Clips created and updated."


AdminUser.create(email: "admin@admin.pl", password: "1234")

p "Admin created."

100.times do
Friendship.create(user_id: User.all.sample.id, friend_id: User.all.sample.id)
end

p "Friendships created."

