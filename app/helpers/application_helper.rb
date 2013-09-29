module ApplicationHelper
	def yawlr_title(page_title)
		main_title = "YAWLr"
		if page_title.empty?
			main_title
		else
			"#{main_title} | #{page_title}"
		end
	end

end
