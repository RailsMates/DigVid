ActiveAdmin.register Category do
  permit_params :name, :created_at, :updated_at
  	before_filter do
    	Category.class_eval do
      		def to_param
       			id.to_s
      		end
    	end	
  	end
end
