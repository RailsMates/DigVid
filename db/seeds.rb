User.destroy_all
Clip.destroy_all
Category.destroy_all

user = User.new
user.email = 'test@example.com'
user.username = 'Seed User'
user.encrypted_password = 'abc'
user.password = "abc"
user.name = "Seed"
user.gender = "Male"
user.save!

5.times do
Clip.create(URL: "https://www.youtube.com/watch?v=ZCx0X2YSd1M", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=spxg0O05kiA", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=W81C1VgqYnU", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=4zLfCnGVeL4", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=g4arvDxKVIo", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=x7MCbis75wk", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=8IHFVn0sv14", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=XIQNngEnKU0", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=Im8zYhFB0JA", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=d7R7q1lSZfs", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=fUis9yny_lI", counter: rand(0..40), created_at: (rand*30).days.ago)
Clip.create(URL: "https://www.youtube.com/watch?v=nCkpzqqog4k", counter: rand(0..40), created_at: (rand*30).days.ago)
end
Clip.update_all(name: "Sample Clip Name", user_id: user.id)

p "Clips created and updated."

Category.create(name: "Pop")
Category.create(name: "Nineties")
Category.create(name: "Heavy Sounds")
Category.create(name: "Chillout")
Category.create(name: "Rap")
Category.create(name: "Rock")
Category.create(name: "Disco")

p "Categories created."
