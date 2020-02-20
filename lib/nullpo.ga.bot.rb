require 'twitter'

# client = Twitter::REST::Client.new do |config|
#   config.consumer_key        = "Inc8nZzM9SANuc0BuQjqa2JCt"
#   config.consumer_secret     = "NgmngBaUNSghlfKvE02yAzxBOIOeoZPGfLic31DK1WxQl9trlw"
#   config.access_token        = "1101771824491163649-O4pjWNpscQWebKzLIViPcSHwE18Uxh"
#   config.access_token_secret = "FjMTwQYdEVKQ4eoORuieeTALHtHbAhjDbh6n8GkOIhWMy"
# end

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "Inc8nZzM9SANuc0BuQjqa2JCt"
  config.consumer_secret     = "NgmngBaUNSghlfKvE02yAzxBOIOeoZPGfLic31DK1WxQl9trlw"
  config.access_token        = "1101771824491163649-O4pjWNpscQWebKzLIViPcSHwE18Uxh"
  config.access_token_secret = "FjMTwQYdEVKQ4eoORuieeTALHtHbAhjDbh6n8GkOIhWMy"
end

#自分のユーザー名
#USERNAME = "tetsumaybe"

