# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all"
User.all.destroy_all
Member.all.destroy_all
Club.destroy_all

puts 'Create users'
  User.create([{email: 'mdesrosiers@orange.fr', firstname: 'Marc',
    lastname: 'Desrosiers', league_id: 12, password: '123soleil'}])

puts 'Create clubs'
  Club.create([{id: 1,
                name: "JSA ANGOULEME",
                postal_code: 16000,
                league_id: 12,
                }])

puts 'Create members'
  Member.create([{firstname: 'Joris',
    lastname: 'Desrosiers',
    licence_number: '2019FRLNAV1',
    category: 'V2',
    sex: 'Homme',
    club_id: Club.last.id
    }])
