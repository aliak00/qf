# == Schema Information
# Schema version: 20100613020951
#
# Table name: facts
#
#  id         :integer         not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Fact < ActiveRecord::Base
  has_one :dimension, :as => :valuable
  accepts_nested_attributes_for :dimension
  
  has_many :fact_values
  has_many :entities, :through => :fact_values
  
end