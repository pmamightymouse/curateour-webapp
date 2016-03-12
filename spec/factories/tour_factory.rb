FactoryGirl.define do

  sequence :name do |n|
    "Tour #{n}"
  end

  factory :tour do
    user
    name
  end

end
