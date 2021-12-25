FactoryBot.define do
  factory :article do
    sequence(:title){|n| "Sample Article #{n}"}
    content { "sample-article" }
    sequence(:slug){|n| "Slug #{n}"}
  end
end
