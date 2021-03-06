module UsersHelper
  def set_avatar(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=512"
    image_tag(gravatar_url, alt: user.user_name, class: "gravatar")
  end
end
