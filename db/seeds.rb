# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

20.times do |i|
User.create(name: "#{i} - Ana", last_name: "Ruiz", phone: 234354, address: "Calle 67")
end

################ Metdos que se invocan sobre la Clase

User.all
User.first
User.last
User.find(3)
User.find_by(name: "algo")
User.where(name: "algo")

################ Metodos que se invocan sobre un registro

user = User.find(1)
user.email
user.save
user.update(name: "otro name")
user.destroy