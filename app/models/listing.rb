class Listing < ActiveRecord::Base

  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood, :class_name => "City"
  has_many :reservations
  has_many :reviews, through: :reservations
  

end
