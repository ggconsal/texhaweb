class Category < ActiveRecord::Base
	
	before_save :calculate_results_cat

	def calculate_results_cat
	    unless self.cat_titulo.blank?
	        self.cat_titulo_translate = self.cat_titulo.downcase.gsub("ñ","n").gsub("á","a").gsub("é","e").gsub("í","i").gsub("ó","o").gsub("ú","u").gsub(/\W/,"-")
	    end
	end

end
