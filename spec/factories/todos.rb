FactoryGirl.define do
  factory :todo do
  	sequence(:title) {|n| "title #{n}"}
  	completed false
  end
end