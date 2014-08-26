class Occasion < ActiveRecord::Base
  belongs_to :recipient
  has_many :gift_occasions
	has_many :gifts, through: :gift_occasions

  def self.future
  	where('date >= ?', Date.today)
  end
  
  def self.order_by_date
  	order(date: :desc)
  end

end
