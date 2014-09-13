# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :episode do
    name "MyString"
    description "MyText"
    notes "MyText"
    published_at "2014-09-11 23:02:25"
    position 1
    comments_count 1
  end
end
