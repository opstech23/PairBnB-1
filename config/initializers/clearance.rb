Clearance.configure do |config|
 config.mailer_sender = "clearanceadmin@pairbnb.io"
  config.rotate_csrf_on_sign_in = true
  config.allow_sign_up = true
  config.cookie_domain = ".pairbnb.io"
  config.cookie_expiration = lambda { |cookies| 1.year.from_now.utc }
  config.cookie_name = "remember_me"
  config.cookie_path = "/"
  config.routes = true
  config.httponly = false
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.redirect_url = "/"
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
end
