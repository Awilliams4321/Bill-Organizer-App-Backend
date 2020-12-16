# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Test1", email: "tester1@gmail.com")
User.create(name: "Test2", email: "tester2@gmail.com")

Bill.create(name: "Car Payment", creditor: "Suntrust", balance_owed: 15000, monthly_payment: 250, due_date: 15, user_id: 1)
Bill.create(name: "School Loan", creditor: "Climb", balance_owed: 11000, monthly_payment: 400, due_date: 25, user_id: 2)

