# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

pics_file = File.read("./pics.json")
pics_hash = JSON.parse(pics_file) 

User.destroy_all
Station.destroy_all
Friendship.destroy_all
Pic.destroy_all
Comment.destroy_all

stations = [
    "Five Points",#
    "Airport",#
    "College Park",#
    "Lindbergh Center",#
    "Peachtree Center",#
    "H. E. Holmes",#
    "Kensington",#
    "West End",#
    "Arts Center",#
    "North Springs",#
    "North Avenue",#
    "Indian Creek",#
    "Midtown",#
    "Avondale",#
    "Doraville",#
    "East Point",#
    "Oakland City",#
    "Georgia State",#
    "Decatur",#
    "Chamblee",#
    "Lenox",#
    "Dunwoody",#
    "Inman Park/Reynoldstown",#
    "Civic Center",#
    "Brookhaven/Oglethorpe University",#
    "Sandy Springs",#
    "West Lake",#
    "Buckhead",#
    "Dome/GWCC/Philips/CNN",#
    "Ashby",#
    "Lakewood/Ft. McPherson",#
    "Bankhead",#
    "King Memorial",#
    "Garnett",#
    "Medical Center",#
    "Vine City",#
    "Edgewood/Candler Park",#
    "East Lake"#
]
stations.each do |station|
    Station.create(
        name: station, 
        slug: station.gsub(/[\s\/.]/, "-").downcase,
        likes: rand(500))
end

10.times do
    User.create(
        name: Faker::FunnyName.two_word_name,
        username: Faker::Internet.username,
        password_digest: Faker::Internet.password,
        profile_pic_url: "http://localhost:3000/generic_profile.jpg",
        bio: Faker::TvShows::TheFreshPrinceOfBelAir.quote,
        location: Faker::Address.community,
        home_station: Station.all.sample.name)
end

pics_hash.each do |ph|
    Pic.create(
        user_id: ph["user_id"],
        station_id: ph["station_id"],
        pic_url: ph["pic_url"],
        likes: rand(500)
    )
end

100.times do
    Comment.create(
        commentable: Station.all.sample,
        content: Faker::TvShows::DumbAndDumber.quote,
        user_id: User.all.sample.id
    )
end

100.times do
    Comment.create(
        content: Faker::TvShows::Seinfeld.quote,
        commentable: Pic.all.sample,
        user_id: User.all.sample.id
    )
end

50.times do
    Friendship.create(
        user_id: User.all.sample.id,
        friend_id: User.all.sample.id
    )
end