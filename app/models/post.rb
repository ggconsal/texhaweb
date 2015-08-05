class Post < ActiveRecord::Base
  belongs_to :contact

  has_many :post_comments

  accepts_nested_attributes_for :post_comments

  has_many :post_rels

  accepts_nested_attributes_for :post_rels

  has_many :post_links

  accepts_nested_attributes_for :post_links

end
