ActiveAdmin.register User do
    permit_params :username, :name
     before_filter do
   		User.class_eval do
      		def to_param
       			id.to_s
      		end
    	end	
  	end
end
