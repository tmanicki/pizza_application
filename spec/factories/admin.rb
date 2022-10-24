# Used to test admin capablities

FactoryBot.define do
    factory :admin do
      id {1}
      email {"test@owner.com"}
      password {"qwerty"}
      title {"1"}
    end
  end
  