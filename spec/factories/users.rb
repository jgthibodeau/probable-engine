FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Doe'
    email 'jdoe@test.com'
    phone 1_234_567_890
    sequence(:spire_id)

    trait :normal do
      groups { [FactoryGirl.create(:group,
                                   :user_permissions,
                                   name: 'user_group',
                                   description: 'Some user group')] }
    end

    trait :admin do
      first_name 'Admin'
      groups { [FactoryGirl.create(:group,
                                   :admin_permissions,
                                   name: 'admin_group',
                                   description: 'Some admin group')] }
    end
  end
end
