# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    country "MyString"
    state "MyString"
    city "MyString"
    pinCode 1
    latitude 1.5
    longitude 1.5
    locality "MyString"
    streetName "MyString"
    building "MyString"
  end
end
