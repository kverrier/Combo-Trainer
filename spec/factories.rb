Factory.define :combo do |f|
  f.sequence(:name) { |n| "Combo#{n}}" }
  f.sequence(:submitter) {|n| "Person#{n}" }
end
