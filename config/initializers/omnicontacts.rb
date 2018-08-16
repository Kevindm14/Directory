    require 'omnicontacts'

    Rails.application.middleware.use OmniContacts::Builder do
        importer :gmail, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"],
         {:redirect_path => "/oauth2callback",
          :ssl_ca_path => "/etc/ssl/certs/curl-ca-bundle.crt"}
    end