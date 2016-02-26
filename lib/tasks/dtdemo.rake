require 'ffaker'

namespace :dtdemo do
  desc "Generate dummy data for surveys"
  task generate_dummy_data: :environment do
    for i in 1..100
      Contact.create(name: FFaker::Name.name, bio: FFaker::Lorem.sentence, age: rand(1..99))
    end
  end
end
