if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_authentication", domain: "abc-xyz.herokuapp.com" # update this for API source app production environment host
else
  Rails.application.config.session_store :cookie_store, key: "_authentication"
end
