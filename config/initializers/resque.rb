begin
  uri = ENV['RESQUE_REDIS_URL']
  if uri
    uri = URI.parse(ENV["RESQUE_REDIS_URL"])
    Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
  end
end
