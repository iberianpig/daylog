Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter, ENV['TW_CONSUMER_KEY'], ENV['TW_CONSUMER_SECRET']
  provider :facebook, ENV['FB_CONSUMER_KEY'], ENV['FB_CONSUMER_SECRET']
end  
