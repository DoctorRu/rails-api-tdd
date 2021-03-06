FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "Article #{n}" }
    sequence(:content)  { |n| "Content #{n}" }
    sequence(:slug) { |n| "MyString #{n}" }
  end
end
