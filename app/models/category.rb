class Category < ActiveRecord::Base
	
	before_save :calculate_results

	def calculate_results
	    unless self.cat_titulo.blank?
	        self.cat_titulo_translate = self.cat_titulo.downcase.gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
	    end
	end

end
