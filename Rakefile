if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end

require 'data_mapper'
require './app/app'
require './data/seed_data'

namespace :db do
  desc "Non destructive upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data loss)"
  end

  desc "Destructive upgrade"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Auto-migrate complete (data was lost)"
  end

  desc "Seed database with dummy data"
  task :seed do
    DataMapper.auto_migrate!

    users = USER_DATA.map do |email|
      User.create(
        email: email,
        password: "secret1234",
        password_confirmation: "secret1234"
      )
    end

    SPACE_DATA.each do |space|
      new_space = Space.create(
        name: space[:name],
        description: space[:description],
        price: rand(200) + 100,
        user_id: users.sample.id
      )

      space[:available_ranges].each do |availability|
        Availability.create(
          start_date: availability[:start],
          end_date: availability[:end],
          space_id: new_space.id
        )
      end
    end

    puts "Auto-migrate and seed complete (data was lost)"
  end
end
