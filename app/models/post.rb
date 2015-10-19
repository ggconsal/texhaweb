class Post < ActiveRecord::Base
  belongs_to :contact

  has_many :post_comments
  accepts_nested_attributes_for :post_comments

  has_many :post_rels
  accepts_nested_attributes_for :post_rels

  has_many :post_links
  accepts_nested_attributes_for :post_links

  has_attached_file :imagen_big, default_url: "Missing.png"
  validates_attachment_content_type :imagen_big, :content_type => /\Aimage\/.*\Z/

  has_attached_file :imagen_big_v, default_url: "Missing.png"
  validates_attachment_content_type :imagen_big_v, :content_type => /\Aimage\/.*\Z/

end
