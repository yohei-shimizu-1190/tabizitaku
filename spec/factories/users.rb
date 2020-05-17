FactoryBot.define do

  factory :user do
    sequence(:nickname)   {Faker::Name.last_name}
    sequence(:email)      {Faker::Internet.email}
    password              {"0000000abc"}
    password_confirmation {"0000000abc"}
  end

end