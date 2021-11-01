FactoryBot.define do
  factory :post do
    title { "投稿テスト" }
    last_day { Faker::Number.between(from: 1, to: 9999) }
    content { Faker::Games::Pokemon.name }
  end
end
