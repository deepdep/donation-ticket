FactoryBot.define do
  factory :ticket do
    user { nil }
    amount { 1 }
    used { false }
    token { "MyString" }
  end
end
