FactoryGirl.define do

  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :user do
    email
    password 'p@ssw0rd'
    password_confirmation 'p@ssw0rd'
  end

end
