class Recipe < ActiveRecord::Base

  has_many :quantities
  has_many :ingredients,
           :through => :quantities

  accepts_nested_attributes_for :quantities,
  	:reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} }, :allow_destroy => true
  #accepts_nested_attributes_for :ingredients
end
