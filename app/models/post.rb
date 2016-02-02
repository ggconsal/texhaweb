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

  before_save :calculate_results_post

  def calculate_results_post
      if !self.pos_tag01.blank?
          self.pos_tag_translate1 = self.pos_tag01.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
      else
          self.pos_tag_translate1 = ""
      end
      if !self.pos_tag02.blank?
          self.pos_tag_translate2 = self.pos_tag02.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
      else
          self.pos_tag_translate2 = ""
      end
      if !self.pos_tag03.blank?
          self.pos_tag_translate3 = self.pos_tag03.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
      else
          self.pos_tag_translate3 = ""
      end
      if !self.pos_tag04.blank?
          self.pos_tag_translate4 = self.pos_tag04.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
      else
          self.pos_tag_translate4 = ""
      end
      if !self.pos_tag05.blank?
          self.pos_tag_translate5 = self.pos_tag05.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
      else
          self.pos_tag_translate5 = ""
      end
      if !self.pos_tag06.blank?
          self.pos_tag_translate6 = self.pos_tag06.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
      else
          self.pos_tag_translate6 = ""
      end
  end

end
