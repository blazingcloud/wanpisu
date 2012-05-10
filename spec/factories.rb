Factory.define :room do |f|
  f.sequence(:name) { |n| "room#{n}" }
  f.password "valid"
  f.google_user "blazingcloudtest@gmail.com"
  f.google_password "welikedinos"
  f.google_spreadsheet_key "0Am2lHFxzYGYgdHpSc2s4SDExN0JDbl9uNWxuVzN1V2c"
end
