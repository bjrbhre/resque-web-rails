if ENV['RESQUE_USER']
  Resque::Server.use(Rack::Auth::Basic) do |user, password|
    # return true if Rails.env.development?

    env_password = ENV['RESQUE_PASSWORD']
    env_user = ENV['RESQUE_USER']

    # check password and user
    env_password.present? &&
      env_password == password &&
      env_user.present? &&
      env_user == user
  end
end
