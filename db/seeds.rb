# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Category.create(name: "Debt")
Category.create(name: "Housing")
Category.create(name: "Insurance")
Category.create(name: "Medical")
Category.create(name: "Personal")
Category.create(name: "School Loans")
Category.create(name: "Subscriptions")
Category.create(name: "Utilities")
Category.create(name: "Vehicle")
Category.create(name: "Other")


Bill.create(name: "Car Payment", creditor: "Suntrust", balance_owed: 15000, monthly_payment: 250, due_date: 15, category_id: 9)
Bill.create(name: "Flatiron School", creditor: "Climb", balance_owed: 11000, monthly_payment: 400, due_date: 25, category_id: 6)

