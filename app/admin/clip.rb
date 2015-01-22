ActiveAdmin.register Clip do
  permit_params :name, :counter, :confirmed, :URL, :user_id
	before_filter do
    	Clip.class_eval do
      		def to_param
       			id.to_s
      		end
    	end	
  	end
end
