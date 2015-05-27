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

class Product < ActiveRecord::Base
  def self.group_by_day
    # queries the database 
    self.all.group_by { |p| p.created_at.beginning_of_day }
  end

  def self.quantity_by_day
    # returns an array of hashes, each containing the date and quantity
    quantity_array = []
    self.group_by_day.each do |day, products|
      quantity_array << {
        date: day.to_s(:db), 
        quantity: products.map(&:quantity).sum
      }
    end
    quantity_array
  end

  def self.group_by_week
    self.all.group_by { |p| p.created_at.beginning_of_week }
  end

  def self.quantity_by_week
    # ...
  end

  def self.group_by_month
    self.all.group_by { |p| p.created_at.beginning_of_month }
  end

  def self.quantity_by_month
    # ...
  end

end
