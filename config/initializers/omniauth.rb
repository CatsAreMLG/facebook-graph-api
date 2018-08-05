OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_SECRET"], scope:  'user_photos', 'user_posts', 'user_videos', 'user_link'
end
