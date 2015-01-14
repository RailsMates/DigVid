module ClipHelper

	def modifyURL(yt_url)
		modified = yt_url.split('=').last
		p "//www.youtube.com/embed/#{modified}"
	end

end