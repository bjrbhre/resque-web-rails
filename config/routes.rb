Rails.application.routes.draw do
  mount Resque::Server, :at => "/"
end
