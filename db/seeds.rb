# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Puzzle.destroy_all
User.destroy_all

puts "Creating users..."

u1 = User.create(email: 'nuria@test.com', password: 'pass123')
u2 = User.create(email: 'ana@test.com', password: 'pass123')
u3 = User.create(email: 'tom@test.com', password: 'pass123')
u4 = User.create(email: 'stephani@test.com', password: 'pass123')

puts "Creating puzzles..."

p1 = Puzzle.create(name: "Thomas Kinkade: Peaceful Moments 500 Piece Jigsaw Puzzle", description: "Thomas Kinkade takes us to a beautiful country lodge, situated close to the banks of the bubbling river flanked by forests and mountains. We can imagine a warming log fire burning as smoke spirals from the lodges stone chimney. The family is enjoying their break by fishing and relaxing in the quiet wilderness.\nThe charming puzzle could quickly become a favourite way to relax.", price: 13.99)
p2 = Puzzle.create(name: "Owls in the Wood 1000 Piece Jigsaw Puzzle", description: "Owls in the Wood is the title of this delightful 1000-piece Falcon de luxe jigsaw puzzle, which is part of the Falcon de luxe Animals collection. The puzzle image depicts a cloudy autumn day in the countryside that is being enjoyed by an array of stunning owls who are sat on beautifully coloured flowers and the branches on the trees. What really is stunning about this 1000 piece jigsaw puzzle is the vibrant colours used to paint these beautiful owls and bring to life this gloomy day.", price: 9.00)
p3 = Puzzle.create(name: "Summer in Rio de Janiero 1000 Piece Jigsaw Puzzle", description: "Take in the views of Rio de Janeiro, the second most populated city in Brazil, on a glorious Summer's day. In this spectacular scene of Botafogo, the name of this beachside area, we see Sugarloaf Mountain standing tall over the water. Just imagine the incredible views while taking a ride on the Sugarloaf Cable Car. This beautiful jigsaw puzzle will transport you to this beautiful place off the coast of the Atlantic Ocean.", price: 14.99)
p4 = Puzzle.create(name: "Munster Historical Map 1000 Piece Jigsaw Puzzle (1610)", description: "Originally sourced by renowned English cartographer John Speed (1552-1629) who published an atlas called 'The Theatre of the Empire of Great Britaine'. His maps themselves were of high quality and gained a great reputation for being among the best county maps. The finished jigsaw measures 66 x 50cm and comes with a Free colour guide print.", price: 19.99)
p5 = Puzzle.create(name: "Thomas Kinkade: Disney Dumbo 1000 Piece Jigsaw Puzzle", description: "Thomas Kinkade brings another stunning Disney themed jigsaw puzzle. Here we see everyone's favourite elephant Jumbo soring above the circus of happiness, below is his mother, the ringmaster and all the excited families ready to watch the show.", price: 11.50)

puts "Creating bookings..."

Booking.create(user: u1, puzzle: p1)
Booking.create(user: u2, puzzle: p2)
Booking.create(user: u1, puzzle: p3)
Booking.create(user: u3, puzzle: p4)
Booking.create(user: u2, puzzle: p5)

puts "Finished!"
