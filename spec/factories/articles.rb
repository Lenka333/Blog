FactoryGirl.define do
    factory :article do
      title {Faker::Name.title}
      text  {Faker::Lorem.paragraph}
    end
  end