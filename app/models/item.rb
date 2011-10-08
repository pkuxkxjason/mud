class Item < ActiveRecord::Base
  belongs_to :owner, :polymorphic => true
  validate :owner, :presence => true
  
  has_many :data_fields
end
