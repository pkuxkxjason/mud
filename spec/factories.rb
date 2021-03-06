FactoryGirl.define do
  factory :player do
    name "Danny"
    colors ({:test1 => :red, :test2 => :blue})
    room
  end

  factory :room do |r|
    name "example room"
    r.desc "This is an example room"
  end
  
  factory :exit do
  end
  
  factory :item do
    owner :factory => :room
    factory :basic_item, :class => Items::BasicItem do
      type "Items::BasicItem"
    end
  end
  
  factory :simple_item
end
