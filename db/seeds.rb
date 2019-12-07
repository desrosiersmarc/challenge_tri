# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def seed_destroy_all
  puts "League and format are already create by migration"

  puts "Destroy all"

  Result.all.destroy_all
  puts "results"

  Calculation.all.destroy_all
  puts "calculations"

  Contest.all.destroy_all
  puts "contests"

  User.all.destroy_all
  puts "users"

  Member.all.destroy_all
  puts "members"

  Club.destroy_all
  puts "clubs"

end




def seed_users
  puts 'Create users'
  10.times do
    User.create(email: Faker::Internet.email,
                firstname: Faker::Name.first_name ,
                lastname: Faker::Name.last_name ,
                league_id: rand(1..17),
                password: '123soleil')
    print '*'
  end
  puts''
  puts User.count 'users'

end

def seed_clubs
  puts 'Create clubs'
  50.times do
    Club.create(name: Faker::Movies::StarWars.planet,
                postal_code: rand(10000..99000),
                league_id: rand(1..17))
    print '+'
  end
  puts''
  print Club.count 'clubs'

end

def seed_members
  puts 'Create members'
  50.times do
    Member.create(firstname: Faker::Name.first_name,
                  lastname: Faker::Name.last_name,
                  licence_number: Faker::Alphanumeric.alphanumeric(number: 10),
                  category: ['Junior', 'Sénior', 'V1', 'V2', 'V3'].sample,
                  sex: ['Homme', 'Femme'].sample,
                  club_id: Club.all.sample.id)
    print ':'
  end
  puts ''
end

def seed_contests
  puts 'Create contest'
  25.times do
    Contest.create(name: Faker::Superhero.name,
                   location: Faker::Address.city,
                   date: Time.now+rand(1..100).day,
                   user_id: User.all.sample.id,
                   league_id: League.all.sample.id)
    print '^'
  end
  puts ''

end

def seed_calculations
 puts 'Create calculations'
  i = 1
  20.times do
    Calculation.create(
      league_id: 17,
      contestants_max: 20,
      place: i,
      points: (21-i),
      year: 2019,
      name: 'League NL moins de vingt participants'
      )
    i+=1
    print i.to_s + "\r"
  end
  print i
end

def seed_results
  puts 'Create results'
  i = 1
  30.times do
    Result.create(
      contest_id: Contest.first.id,
      calculation_id: Calculation.first.id,
      member_id: Member.all.sample.id,
      place: 1
      )
    i +=1
    print i.to_s + " results" + "\r"
  end
end


case Rails.env
  when "development"
    seed_destroy_all
    seed_users
    seed_clubs
    seed_members
    seed_contests
    seed_calculations
    seed_results
end
