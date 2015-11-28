module ApplicationHelper

	def fb_share(app_id, redirect_uri, opts={}) 
		o = {:text => 'Compartir', :name => '', :display => '', 
			 :caption => '', :description => '', :link => '', 
			 :picture => '', :source => '', :properties => {}, 
			 :actions => {}}.merge!(opts)
		opts_array = []

		opts.each do |key, value|
			case
			  	when key.to_s == 'properties'
					@prop = value.to_json
				when key.to_s == 'actions'
					@action = value.to_json
				else  
					opts_array.push("#{key}=#{value}")
			end
		end
		url = "http://www.facebook.com/dialog/feed?app_id=#{app_id}&redirect_uri=#{redirect_uri}&#{opts_array.join("&")}&properties=#{@prop}&actions=#{@action}"

		link_to("#{o[:text]}", url)
	end

# "<%= fb_share(890198291062274, 'https://www.facebook.com/Texha-Pruebas-890198291062274/', {:name => "hola", :description => "hola chau", :link => "http://texhaarg.com/post_parrafos?post=25", :picture => "http://texhaarg.com/system/posts/imagen_bigs/000/000/025/original/imagenes04_21693476-videowall-tv-grande-con-diferentes-canales-en-una-habitacion-negro-con-la-reflexion.jpg?1448393911" }) %>"



end
