class Page < ActiveRecord::Base

  has_attached_file :imagen_hori, default_url: "Missing.png"
  validates_attachment_content_type :imagen_hori, :content_type => /\Aimage\/.*\Z/

  has_attached_file :imagen_vert, default_url: "Missing.png"
  validates_attachment_content_type :imagen_vert, :content_type => /\Aimage\/.*\Z/

end
