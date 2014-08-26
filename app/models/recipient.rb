class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many :occasions
  has_many :gift_occasions
  has_many :gifts, through: :gift_occasions
end
