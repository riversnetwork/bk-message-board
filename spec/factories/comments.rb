FactoryGirl.define do
  factory :comment do
    content {"This is content for a comment"}
    id {4567}
    post_id {789}
    user_id {5768}
  end
end