# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    product_id 1
    quantity 1
    selling_price "9.99"
    total 1.5
    date "2013-10-12"
    Type false
  end
end
