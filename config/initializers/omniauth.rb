OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1440232149552112', '423bcc2aebf3aa620faedb852de649bf', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}