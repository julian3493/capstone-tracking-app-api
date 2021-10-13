if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_capstone-tracking-app-api", domain: "http://auth-app-api.heroku.com"
else
  Rails.application.config.session_store :cookie_store, key: "_capstone-tracking-app-api"
end
