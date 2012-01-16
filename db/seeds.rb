# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['Admin      |                        | 0',
 'Menu Items |/menu_items             | 1',
 'Activities |/activities             | 2',
 'Tasks      |/tasks                  | 3',
 'Visits     |/visits                 | 4',
 'Schedule   |                        | 5',
 'SOA        |/schedule_of_activities | 6'].each do |item|
  mi = item.split('|').each { |v| v.strip! }
  MenuItem.create!(:name => mi[0], :link => mi[1], :order => mi[2])
end

# Dummy data to generate oversized menu
MenuItem.create!(:name => "Favorites", :link => nil, :order => 7)
(1..25).each { |i| MenuItem.create!(:name => "Link#{i}", :link => "#", :order => 7 + i)}
