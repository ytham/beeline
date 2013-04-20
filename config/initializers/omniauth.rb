OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '410517032381049', 'ead1e573defbba9852edc09626c75bcf'
end
