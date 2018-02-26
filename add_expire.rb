redis_connection = Redis.new(Rails.application.config_for(:redis))
redis = Redis::Namespace.new({prefix}, redis: redis_connection)
redis.keys("#{key}*").each { |key| redis.expire(key,60) }
