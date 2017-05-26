require 'faker'

users = 20.times.map do
  User.create!( :username   => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

leads = 50.times.map do
  Lead.create!( salutation:          Faker::Internet.user_name,
                first_name:          Faker::Internet.user_name,
                last_name:           Faker::Internet.user_name,
                company:             Faker::Internet.user_name,
                title:               Faker::Internet.user_name,
                department:          Faker::Internet.user_name,
                contact_specialty:   Faker::Internet.user_name,
                location:            Faker::Internet.user_name,
                street:              Faker::Internet.user_name,
                city:                Faker::Internet.user_name,
                state:               Faker::Internet.user_name,
                zip_code:            Faker::Internet.user_name,
                country:             Faker::Internet.user_name,
                phone:               Faker::Internet.user_name,
                fax:                 Faker::Internet.user_name,
                email:               Faker::Internet.email,
                new_to_ultrasound:   true,
                previous_ultrasound: false,
                current_sonosite:    true,
                buying_timeframe:    Faker::Internet.user_name,
                product:             Faker::Internet.user_name,
                rating:              'medium',
                marketing_comments:  Faker::Internet.user_name )
end
