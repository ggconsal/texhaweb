class PostParrafo < ActiveRecord::Base
  belongs_to :post

  has_many :post_parrafo_bullets

  accepts_nested_attributes_for :post_parrafo_bullets

  has_attached_file :imagen_small, default_url: "Missing.png"
  #validates_attachment_content_type :imagen_small, :content_type => /\Aimage\/.*\Z/

  validates_attachment :imagen_small, # presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..40.kilobytes }

end
