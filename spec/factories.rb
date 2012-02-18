Factory.define :room do |f|  
  f.sequence(:name) { |n| "room#{n}" }  
  f.password "valid"  
end  