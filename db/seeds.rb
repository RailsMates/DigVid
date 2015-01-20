User.destroy_all
Clip.destroy_all
Category.destroy_all

5.times do
Clip.create(URL: "https://www.youtube.com/watch?v=ZCx0X2YSd1M", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=spxg0O05kiA", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=W81C1VgqYnU", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=4zLfCnGVeL4", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=g4arvDxKVIo", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=x7MCbis75wk", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=8IHFVn0sv14", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=XIQNngEnKU0", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=Im8zYhFB0JA", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=d7R7q1lSZfs", counter: 0)
Clip.create(URL: "https://www.youtube.com/watch?v=fUis9yny_lI", counter: 0)
end
Clip.update_all(name: "Sample Clip Name")

p "Clips created and updated."

Category.create(name: "Pop")
Category.create(name: "Nineties")
Category.create(name: "Heavy Sounds")
Category.create(name: "Chillout")
Category.create(name: "Rap")
Category.create(name: "Rock")
Category.create(name: "Disco")

p "Categories created."
