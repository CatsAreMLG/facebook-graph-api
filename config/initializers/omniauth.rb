OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '193266678211520', 'b886974d52b031ea4deef4884ed2cee0', scope: 'email', info_fields: 'email,name'
end
