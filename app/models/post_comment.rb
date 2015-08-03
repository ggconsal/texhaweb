class PostComment < ActiveRecord::Base
  belongs_to :post
  belongs_to :contact

  has_many :post_comment_answers

  accepts_nested_attributes_for :post_comment_answers
end
