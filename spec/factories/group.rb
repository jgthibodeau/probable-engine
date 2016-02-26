FactoryGirl.define do
  factory :group do
    sequence(:name) { |n| "Group #{n}" }
    description 'Description'

    trait :user_permissions do
      permissions { [FactoryGirl.create(:permission)] }
    end

    trait :admin_permissions do
      permissions { [FactoryGirl.create(:permission, action: 'destroy')] }
    end
  end
end
