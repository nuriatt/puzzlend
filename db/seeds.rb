# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Puzzle.destroy_all
User.destroy_all

puts "Creating users..."

u1 = User.create(email: 'nuria@test.com', password: 'pass123')
u2 = User.create(email: 'ana@test.com', password: 'pass123')
u3 = User.create(email: 'tom@test.com', password: 'pass123')

puts "Creating puzzles..."

p1 = Puzzle.create(
  name: "Peaceful Moments",
  description: "Thomas Kinkade takes us to a beautiful country lodge, situated close to the banks of the bubbling river flanked by forests and mountains. We can imagine a warming log fire burning as smoke spirals from the lodges stone chimney. The family is enjoying their break by fishing and relaxing in the quiet wilderness.\nThe charming puzzle could quickly become a favourite way to relax.",
  price: 3.99,
  pieces: 500,
  user: u2
)
file_1 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652383787/puzzlend/Thomas_Kinkade-_Peaceful_Moments_500_Piece_Jigsaw_Puzzle_02_vrhqkc.jpg")
p1.photo.attach(io: file_1, filename: 'puzzle.jpg', content_type: 'image/jpg')

p2 = Puzzle.create(
  name: "Owls in the Wood",
  description: "Owls in the Wood is the title of this delightful 1000-piece Falcon de luxe jigsaw puzzle, which is part of the Falcon de luxe Animals collection. The puzzle image depicts a cloudy autumn day in the countryside that is being enjoyed by an array of stunning owls who are sat on beautifully coloured flowers and the branches on the trees. What really is stunning about this 1000 piece jigsaw puzzle is the vibrant colours used to paint these beautiful owls and bring to life this gloomy day.",
  price: 3.50,
  pieces: 1000,
  user: u1
)
file_2 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652383786/puzzlend/Owls_in_the_Wood_1000_Piece_Jigsaw_Puzzle_02_j8xvie.jpg")
p2.photo.attach(io: file_2, filename: 'puzzle.jpg', content_type: 'image/jpg')

p3 = Puzzle.create(
  name: "Rio de Janiero",
  description: "Take in the views of Rio de Janeiro, the second most populated city in Brazil, on a glorious Summer's day. In this spectacular scene of Botafogo, the name of this beachside area, we see Sugarloaf Mountain standing tall over the water. Just imagine the incredible views while taking a ride on the Sugarloaf Cable Car. This beautiful jigsaw puzzle will transport you to this beautiful place off the coast of the Atlantic Ocean.",
  price: 4.99,
  pieces: 1000,
  user: u3
)
file_3 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652383787/puzzlend/Summer_in_Rio_de_Janiero_1000_Piece_Jigsaw_Puzzle_01_xfziuz.jpg")
p3.photo.attach(io: file_3, filename: 'puzzle.jpg', content_type: 'image/jpg')

p4 = Puzzle.create(
  name: "Munster Retro Map",
  description: "Originally sourced by renowned English cartographer John Speed (1552-1629) who published an atlas called 'The Theatre of the Empire of Great Britaine'. His maps themselves were of high quality and gained a great reputation for being among the best county maps. The finished jigsaw measures 66 x 50cm and comes with a Free colour guide print.",
  price: 4.90,
  pieces: 1000,
  user: u2
)
file_4 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652383787/puzzlend/Munster_Historical_Map_1000_Piece_Jigsaw_Puzzle_1610_01_t2j4qz.jpg")
p4.photo.attach(io: file_4, filename: 'puzzle.jpg', content_type: 'image/jpg')

p5 = Puzzle.create(
  name: "Disney Dumbo",
  description: "Thomas Kinkade brings another stunning Disney themed jigsaw puzzle. Here we see everyone's favourite elephant Jumbo soring above the circus of happiness, below is his mother, the ringmaster and all the excited families ready to watch the show.",
  price: 0.00,
  pieces: 1000,
  user: u3
)
file_5 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652383787/puzzlend/Thomas_Kinkade-_Disney_Dumbo_1000_Piece_Jigsaw_Puzzle_01_c4np6q.jpg")
p5.photo.attach(io: file_5, filename: 'puzzle.jpg', content_type: 'image/jpg')

p6 = Puzzle.create(
  name: "Bacchus and Ariadne",
  description: "Painted by Titian and dating back to 1520, Bacchus and Ariadne is a story from Greek Mythology, set on the Greek island of Naxos. In this scene, Ariadne has been abandoned by Theseus on this island. Bacchus, who is the god of wine, is leaping from a chariot drawn by cheetahs towards Adriadne after falling in love with her at first sight. In the sky, you can see Ariadne's constellation of stars, which was created for her by Bacchus. Discover the story as a beautiful 1000 piece jigsaw puzzle.",
  price: 5.50,
  pieces: 1000,
  user: u1
)
file_6 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652438504/puzzlend/Bacchus_and_Ariadne_-_National_Gallery_1000_Piece_Jigsaw_Puzzle_xvvuwl.jpg")
p6.photo.attach(io: file_6, filename: 'puzzle.jpg', content_type: 'image/jpg')

p7 = Puzzle.create(
  name: "Avocado Park",
  description: "Holy guacamole! This pear-fect 250 piece puzzle is filled to the brim with everyone's favourite little fruit. We've got avo-people doing avo-cardio, chilling with their avo-dogs, some even avo-car! We have faith that you can smash your way through this one! This puzzle is perfect for those aged 8 and up.",
  price: 0.00,
  pieces: 250,
  user: u1
)
file_7 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652438505/puzzlend/Avocado_Park_250_XL_Piece_Jigsaw_Puzzle_xsdumy.jpg")
p7.photo.attach(io: file_7, filename: 'puzzle.jpg', content_type: 'image/jpg')

p8 = Puzzle.create(
  name: "Christmas Puppies",
  description: "This Christmas filled jigsaw puzzle is also filled with the most adorable puppies! Is there a better combination? With a beautifully decorated Christmas tree, decorations above the wood burning stove, stockings and more, you will feel truly festive piecing together this jigsaw. Even one of the puppies is wearing a Santa hat! These adorable puppies are truly getting into the Christmas spirit, and even though they've started opening the presents, they've been very good at not eating Santa's mince pies!",
  price: 2.00,
  pieces: 500,
  user: u2
)
file_8 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652438505/puzzlend/Christmas_Puppies_500_Piece_Jigsaw_Puzzle_ykzaku.jpg")
p8.photo.attach(io: file_8, filename: 'puzzle.jpg', content_type: 'image/jpg')

p9 = Puzzle.create(
  name: "Full of Beans No.13",
  description: "You'll certainly need a cup of coffee or two when trying to complete this tricky bean-filled jigsaw puzzle. The coffee cup full of beans might give you a bit of help, but most of the puzzle is covered in coffee!",
  price: 4.99,
  pieces: 1500,
  user: u3
)
file_9 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652438503/puzzlend/Full_of_Beans_-_Impuzzible_No.13_-_1000_Piece_Jigsaw_Puzzlev_go2paf.webp")
p9.photo.attach(io: file_9, filename: 'puzzle.jpg', content_type: 'image/jpg')

p10 = Puzzle.create(
  name: "Village Wedding",
  description: "It's a beautiful Spring day and the village is in a celebratory mood. A happy couple has just said I do and are making their way to the reception from the church ceremony. Villagers watch on as the wedding party make their way around the pond. A little girl is looking at the beautiful bride from her garden, admiring her pretty dress and flowers. In this scene, you will also find beautiful wildlife, stunning flowers and a cute ginger cat.",
  price: 3.99,
  pieces: 5000,
  user: u3
)
file_10 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652438503/puzzlend/Village_Wedding_-_Sarah_Adams_1000_or_500XL_Piece_Jigsaw_Puzzle_b2r9sc.webp")
p10.photo.attach(io: file_10, filename: 'puzzle.jpg', content_type: 'image/jpg')

p11 = Puzzle.create(
  name: "Wasgij Original",
  description: "This is a re-released version of Wasgij Original 6 - Blooming Marvellous‚, giving you the chance to collect the Wasgij range from the very beginning, which were released over 25 years ago!",
  price: 5.00,
  pieces: 1000,
  user: u1
)
file_11 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652814046/puzzlend/Wasgij_Retro_Original_6_ssygnh.jpg")
p11.photo.attach(io: file_11, filename: 'puzzle.jpg', content_type: 'image/jpg')

p12 = Puzzle.create(
  name: "Mythical Unicorns",
  description: "Renowned artist Lisa Parker has created a magical image filled unicorns. This enchanting image features unicorns frolicking through a fantasy filled forest. A challenging puzzle full of subtle colour and intricate detail.",
  price: 1.50,
  pieces: 2000,
  user: u2
)
file_12 = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1652814127/puzzlend/Mythical_Unicorns_nagmqi.jpg")
p12.photo.attach(io: file_12, filename: 'puzzle.jpg', content_type: 'image/jpg')

puts "Creating bookings..."

Booking.create(user: u1, puzzle: p1, start_date: Time.now, end_date: Time.now + (2*7*24*60*60))
Booking.create(user: u2, puzzle: p2, start_date: Time.now + (2*24*60*60), end_date: Time.now + (1*7*24*60*60))
Booking.create(user: u1, puzzle: p3, start_date: Time.now + (2*7*24*60*60), end_date: Time.now + (3*7*24*60*60))
Booking.create(user: u3, puzzle: p4, start_date: Time.now + (3*7*24*60*60), end_date: Time.now + (2*24*60*60))
Booking.create(user: u2, puzzle: p5, start_date: Time.now, end_date: Time.now + (2*7*24*60*60))

puts "Creating reviews..."

Puzzle.all.each do |puzzle|
  3.times do
    Review.create!(
      {
        username: Faker::Name.first_name,
        stars: rand(1..5),
        comment: Faker::GreekPhilosophers.quote,
        puzzle: puzzle
      }
    )
  end
end

puts "Finished!"
