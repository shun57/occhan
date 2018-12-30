require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.cache_storage = :fog
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_provider = 'fog/aws'

    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY'],
      region: ENV['S3_REGION']
    }

    config.fog_directory  = ENV['S3_BUCKET']
    config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/rails-photo-saku"
    CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
  end
end
