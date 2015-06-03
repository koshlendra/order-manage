# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user=User.create!(:email=>'test@test.com',:first_name=>'first',:password=>'password',:last_name=>'last',:city=>'city',:address=>'address',:phone=> '1234567890',:pincode=>'1234567890')

 user.add_role "admin"
 puts 'add user'