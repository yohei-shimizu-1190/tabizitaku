FactoryBot.define do
  factory :photo do
    text {Faker::Lorem.sentence}
    photo_image {File.open("#{Rails.root}/public/images/test_image.jpg")}
    user
    spot
  end
end