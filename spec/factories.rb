FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "foo#{n}" }
    password "foobar23"
    password_confirmation "foobar23"
    email { "#{username}@example.com" }
   end
end