module UsersHelper

def gravatar_for(user, options = { size: 50 })

	if Rails.env.production? == true

gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
size = options[:size]
gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar id}.png?s=#{size}"
image_tag(gravatar_url, alt: user.name, class: "gravatar")
else 
gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "rails.png?s=#{size}"
		image_tag(gravatar_url, atl: user.name, class: "gravatar")
	end
end

end
