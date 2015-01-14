User.destroy_all
Clip.destroy_all

20.times do

	 User.create( username: Faker::Internet.user_name , name: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password(8), gender: "male" )

end

 admin = User.create( username: "szefowa" , name: "szefowa" , email: "szefowa@wp.pl" , password: "szefowa" , gender: "female" )

p "seeds created"


Clip.create(URL: "https://www.youtube.com/embed/watch?v=ZCx0X2YSd1M")

Clip.create(URL: "https://www.youtube.com/watch?v=lp-EO5I60KA")

Clip.create(URL: "https://www.youtube.com/watch?v=spxg0O05kiA")

Clip.create(URL: "https://www.youtube.com/watch?v=VjHMDlAPMUw")

p "clips created"