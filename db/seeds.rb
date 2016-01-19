# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

state_list = [
   "Karnataka",
   "Goa",
   "Andhra",
  "Tamilnadu"
]

state_list.each do |name|
  State.create( name: name)
end


number_list = [
   1,
   2,
   3,
   4
]

number_list.each do |name|
  Number.create( number: name)
end