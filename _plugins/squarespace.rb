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

		end
	end

end
