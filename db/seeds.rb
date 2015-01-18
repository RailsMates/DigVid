User.destroy_all
Clip.destroy_all

20.times do

	 User.create( username: Faker::Internet.user_name , name: Faker::Name.first_name, email: Faker::Internet.email, password: "abc", password_confirmation: "abc", 
	 				encrypted_password: "abc")

end

p 'Users created'
 admin = User.create( username: "szefowa" , name: "szefowa" , email: "szefowa@wp.pl" , password: "szefowa" , gender: "female" )

p "seeds created"



Clip.create(URL: "https://www.youtube.com/watch?v=ZCx0X2YSd1M")
Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA")
Clip.create(URL: "https://www.youtube.com/watch?v=spxg0O05kiA")
Clip.create(URL: "https://www.youtube.com/watch?v=W81C1VgqYnU")
Clip.create(URL: "https://www.youtube.com/watch?v=4zLfCnGVeL4")
Clip.create(URL: "https://www.youtube.com/watch?v=g4arvDxKVIo")
Clip.create(URL: "https://www.youtube.com/watch?v=x7MCbis75wk")
Clip.create(URL: "https://www.youtube.com/watch?v=8IHFVn0sv14")
Clip.create(URL: "https://www.youtube.com/watch?v=XIQNngEnKU0")
Clip.create(URL: "https://www.youtube.com/watch?v=Im8zYhFB0JA")
Clip.create(URL: "https://www.youtube.com/watch?v=d7R7q1lSZfs")
Clip.create(URL: "https://www.youtube.com/watch?v=fUis9yny_lI")


Clip.create(URL: "https://www.youtube.com/watch?v=ZCx0X2YSd1M")
Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA")
Clip.create(URL: "https://www.youtube.com/watch?v=spxg0O05kiA")
Clip.create(URL: "https://www.youtube.com/watch?v=W81C1VgqYnU")
Clip.create(URL: "https://www.youtube.com/watch?v=4zLfCnGVeL4")
Clip.create(URL: "https://www.youtube.com/watch?v=g4arvDxKVIo")
Clip.create(URL: "https://www.youtube.com/watch?v=x7MCbis75wk")
Clip.create(URL: "https://www.youtube.com/watch?v=8IHFVn0sv14")
Clip.create(URL: "https://www.youtube.com/watch?v=XIQNngEnKU0")
Clip.create(URL: "https://www.youtube.com/watch?v=Im8zYhFB0JA")
Clip.create(URL: "https://www.youtube.com/watch?v=d7R7q1lSZfs")
Clip.create(URL: "https://www.youtube.com/watch?v=fUis9yny_lI")

Clip.create(URL: "https://www.youtube.com/watch?v=ZCx0X2YSd1M")
Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA")
Clip.create(URL: "https://www.youtube.com/watch?v=spxg0O05kiA")
Clip.create(URL: "https://www.youtube.com/watch?v=W81C1VgqYnU")
Clip.create(URL: "https://www.youtube.com/watch?v=4zLfCnGVeL4")
Clip.create(URL: "https://www.youtube.com/watch?v=g4arvDxKVIo")
Clip.create(URL: "https://www.youtube.com/watch?v=x7MCbis75wk")
Clip.create(URL: "https://www.youtube.com/watch?v=8IHFVn0sv14")
Clip.create(URL: "https://www.youtube.com/watch?v=XIQNngEnKU0")
Clip.create(URL: "https://www.youtube.com/watch?v=Im8zYhFB0JA")
Clip.create(URL: "https://www.youtube.com/watch?v=d7R7q1lSZfs")
Clip.create(URL: "https://www.youtube.com/watch?v=fUis9yny_lI")


p "clips created"