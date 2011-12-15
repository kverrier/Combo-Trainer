Factory.define :user do |f|
   f.sequence(:username) {|n| "user#{n}" }
   f.password "secret"
end

Factory.define :combo do |f|
  f.sequence(:name) { |n| "combo#{n}}" }
  f.association :user
end

Factory.define :character do |f|
  f.sequence(:name) { |n| "character#{n}}" }
end
