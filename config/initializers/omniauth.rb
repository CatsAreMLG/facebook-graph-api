OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Figaro.env.FACEBOOK_APP_ID, Figaro.env.FACEBOOK_SECRET, scope: 'email', info_fields: 'email,name'
end
