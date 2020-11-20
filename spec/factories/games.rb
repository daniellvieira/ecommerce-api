FactoryBot.define do
  factory :game do
    system_requirement

    mode { %i(pvp pve both).sample }
    release_date { Faker::Date.backward(days: 720) }
    developer { Faker::Company.name }
  end
end
