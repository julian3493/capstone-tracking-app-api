FactoryBot.define do
  factory :user do
    username { 'testuser' }
    email { 'testuser@email.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :track do
    electrodomestic { 'pc_laptop' }
    day { '16-11-2006' }
    time_connected { 30 }
    watts { 20 }
    user
  end
end
