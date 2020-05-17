FactoryBot.define do

  factory :user do
    nickname              {"you"}
    email                 {"abc123@gmail.com"}
    password              {"0000000abc"}
    password_confirmation {"0000000abc"}
  end

end