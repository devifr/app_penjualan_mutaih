# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    category_id 1
    price_normal "9.99"
    price_reseller "9.99"
  end
end
