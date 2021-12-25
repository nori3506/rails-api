FactoryBot.define do
  factory :article do
    sequence(:title){|n| "Sample Article #{n}"}
    sequence(:content){|n| "Slug #{n}"}
    slug { "sample-article" }
  end
end
