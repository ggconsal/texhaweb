class PostParrafo < ActiveRecord::Base
  belongs_to :post

  has_many :post_parrafo_bullets

  accepts_nested_attributes_for :post_parrafo_bullets
end
