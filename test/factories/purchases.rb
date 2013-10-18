# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchase do
    product_id 1
    quantity 1
    total 1.5
    date "2013-10-12"
  end
end
