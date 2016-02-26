class Page < ActiveRecord::Base

  has_attached_file :imagen_hori, default_url: "Missing.png"
  #validates_attachment_content_type :imagen_hori, :content_type => /\Aimage\/.*\Z/
  validates_attachment :imagen_hori, # presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..140.kilobytes }

  has_attached_file :imagen_vert, default_url: "Missing.png"
  #validates_attachment_content_type :imagen_vert, :content_type => /\Aimage\/.*\Z/
  validates_attachment :imagen_vert, # presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..140.kilobytes }


end
