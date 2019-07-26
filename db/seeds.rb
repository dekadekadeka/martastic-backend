# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Station.destroy_all
Friendship.destroy_all
Pic.destroy_all
Comment.destroy_all

stations = [
    "Five Points",
    "Airport",
    "College Park",
    "Lindbergh Center",
    "Peachtree Center",
    "H. E. Holmes",
    "Kensington",
    "West End",
    "Arts Center",
    "North Springs",
    "North Avenue",
    "Indian Creek",
    "Midtown",
    "Avondale",
    "Doraville",
    "East Point",
    "Oakland City",
    "Georgia State",
    "Decatur",
    "Chamblee",
    "Lenox",
    "Dunwoody",
    "Inman Park/Reynoldstown",
    "Civic Center",
    "Brookhaven/Oglethorpe University",
    "Sandy Springs",
    "West Lake",
    "Buckhead",
    "Dome/GWCC/Philips/CNN",
    "Ashby",
    "Lakewood/Ft. McPherson",
    "Bankhead",
    "King Memorial",
    "Garnett",
    "Medical Center",
    "Vine City",
    "Edgewood/Candler Park",
    "East Lake"
]
stations.each do |station|
    Station.create(
        name: station, 
        slug: station.gsub(/[\s\/.]/, "-").downcase,
        rating: rand(10))
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

pics_array = [
    "https://upload.wikimedia.org/wikipedia/commons/5/56/MARTA_-_N3_Station.jpg",
    "https://www.wjbf.com/wp-content/uploads/sites/47/2018/08/marta20train20in20atlanta20generic20pic_1534834593531.jpg_52549029_ver1.0.jpg",
    "https://www.dailydot.com/wp-content/uploads/fe7/6c/c61a9af9f73b03a0f415c0504a52d30c.jpg",
    "https://www.artpapers.org/wp-content/uploads/2017/11/DSC02260-e1525284313919.jpg",
    "https://whatsnextatl.org/wp-content/uploads/2018/11/MARTA-train-upcloseO.jpg",
    "https://1v1ulb40yc772j8uk01kozpe-wpengine.netdna-ssl.com/wp-content/uploads/2018/06/North-Springa-MARTA-1.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/7/75/MARTA_Peachtree_Center_over_tracks.jpg",
    "https://www.wheretraveler.com/sites/default/files/images/marta_c-katchooo-flickr.jpg",
    "https://khafracom.files.wordpress.com/2019/01/cropped-marta-station-2.jpg?w=1728",
    "https://www.wsp.com/-/media/Insights/US/img-greg-benz-lifetime-achievement-atlanta-marta.jpg"
]
#Seed data will render random, possibly incorrect information regarding pictures
#and what station they belong to. 
#Please use with caution.
25.times do
    Pic.create(
        user_id: User.all.sample.id,
        station_id: Station.all.sample.id,
        pic_url: pics_array.sample,
        rating: rand(10)
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