Jekyll::Hooks.register :site, :post_write do |site|
	# code to call after Jekyll writes the site
	sass = Squarespace::Styles.new(site)
end

module Squarespace

	class Styles
		def initialize(site)

			squarespace_template_path = '/Users/kevin/Documents/projects/5kbakas-sqs'

			# main css file
			FileUtils.cp "#{site.in_dest_dir}/css/main.css", "#{squarespace_template_path}/styles/main.css"

			# main js file
			FileUtils.cp "#{site.in_dest_dir}/javascripts/theme.js", "#{squarespace_template_path}/scripts/theme.js"

		end
	end

end
