OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '396104465688-v4cbrp1el4lo364cs9sgbgtf28e06a3d.apps.googleusercontent.com', 'S7Yyk1l_fss8TUj5fd6GB9n6', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end