# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Account.create([
  {username: 'Feet', first_name: 'Frank', last_name: 'Ross', email: 'frank@example.com', password: 'password'},
  {username: 'Ris', first_name: 'Boris', last_name: 'Ross', email: 'boris@example.com', password: 'password'},
  {username: 'Ach', first_name: 'Fuhrer', last_name: 'Ross', email: 'ach@example.com', password: 'password'}
])
