FactoryBot.define do
  factory :item do
    brand {'brandtest'}
    title {Faker::Lorem.words}
    content {Faker::Lorem.sentence}
    start_date {Faker::Date.in_date_period}
    category_id { 2 }
    category_option_id { 4 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/makeup_foundation.png'), filename: 'test_image.png')
    end
  end
end