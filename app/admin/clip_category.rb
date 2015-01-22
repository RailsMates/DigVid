ActiveAdmin.register ClipCategory do
  permit_params :clip_id,  :category_id, :created_at, :updated_at
  	before_filter do
    	ClipCategory.class_eval do
      		def to_param
       			id.to_s
      		end
    	end	
  	end
end

