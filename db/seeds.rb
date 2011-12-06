# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#for i in 1..200
#  @order=Order.find(i)
#  @order.destroy
#end

for i in 0..99
  Order.create(:name=>"Usuario #{i}",:address=>"direccion #{i}",:email=>"user#{i}@loquesea.com", :pay_type => 'Check',:created_at => Time.now)
end
