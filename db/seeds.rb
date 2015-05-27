# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Time.now
# 300.times do |n|
#   p = Product.create(name: Faker::Commerce.product_name, amount: Faker::Commerce.price, quantity: (rand()*10.round) )
#   p.created_at = t 
#   p.save 
#   t = t - 6.days
# end
# 100.times do |n|
#   p = Product.create(name: Faker::Commerce.product_name, amount: Faker::Commerce.price, quantity: (rand()*10.round) )
#   p.created_at = t 
#   p.save 
#   t = t - 18.days
# end

# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  amount     :float
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#