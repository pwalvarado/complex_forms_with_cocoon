class Quantity < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  attr_accessible :amount, 
                  :ingredient,
                  :ingredient_attributes
  
  accepts_nested_attributes_for :ingredient, 
                                :reject_if => :all_blank
end
