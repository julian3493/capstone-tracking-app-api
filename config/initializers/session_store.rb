if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_capstone-tracking-app-api", domain: "https://julian-comsumption-tracker-app.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_capstone-tracking-app-api"
end
