FactoryGirl.define do
  factory :note do
    noteable_id 1
    noteable_type "MyString"
    content "MyText"
    created_at "2017-04-04 16:39:33"
    updated_at "2017-04-04 16:39:33"
  end

  trait :book do
  	noteable { create :book } 
  end

  trait :article do
  	noteable { create :article } 
  end

end
