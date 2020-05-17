FactoryBot.define do
  factory :spot do
    name {Faker::Space.name}
    content {"content"}
    image   {File.open("#{Rails.root}/public/images/test_image.jpg")}
    region  {"日本"}
    address {"遺産"}
    latitude {11111}
    longitude {111111}
  end
end