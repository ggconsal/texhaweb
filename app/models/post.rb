class Post < ActiveRecord::Base
  belongs_to :contact

  has_many :post_comments

  accepts_nested_attributes_for :post_comments
end
