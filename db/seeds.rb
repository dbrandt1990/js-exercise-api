# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Exercise.destroy_all
Routine.destroy_all

upperbody = Category.create(name:"upperbody")
lowerbody = Category.create(name:"lowerbody")
core = Category.create(name:"core")
cardio = Category.create(name:"cardio")
fullbody = Category.create(name:"fullbody")

pushup = Exercise.create(name:"pushups", category_id: 1, description:"Start prone on floor, hands placed at shoulder width. Push up until arms are straight, do not let you back bend in either direction. Lower body to floor the lift hands squeezing shoulder blades together. Replace hands on the floor and repeat")
pullup = Exercise.create(name:"pullups", category_id: 1, description:"Place hands on bar slightly wider than shoulder width. Pull up until chin passes the bar. Try to keep your lowerbody in the same postion through the whole pull up. Lower back down in a slow controlled way")
squat = Exercise.create(name:"squats", category_id: 2, description:"Stand with legs shoulder width apart. Lower your butt as if you are going to sit in a chair. Keep your back straight. Come back to standing, tightening your legs and butt at the top of the squat.")
vsit = Exercise.create(name:"v-sit", category_id: 3, description:"Sit on floor with legs extened in front. Lift the legs about one foot off the ground and lean back keeping your back stright and reaching hands forward. Find the balance point and hold.")
highknees = Exercise.create(name:"high knees", category_id: 4, description:"Stand with arms extended in front. Jog in place lifting the knees as high as comfortable. Try not to wobble or drop the arms.")

spartan = Routine.create(title:"The Spartan",content: "pushups: 3 x 25, pullups: 3 x 10, squats: 4 x 35, v-sit: 3 x 2 min, highknees: 3 x 2 min", category_id: 5)

spartan.exercises.push(pushup)
spartan.exercises.push(pullup)
spartan.exercises.push(squat)
spartan.exercises.push(vsit)
spartan.exercises.push(highknees)






