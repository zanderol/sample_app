# if Rails.env.production?
#   # CarrierWave.configure do |config|
#   #   config.fog_credentials = {
#   #       # Settings for Amazon S3
#   #       :provider              => 'AWS',
#   #       :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
#   #       :aws_secret_access_key => ENV['S3_SECRET_KEY']
#   #   }
#   #   config.fog_directory     =  ENV['S3_BUCKET']
#   # end
#
# end

CarrierWave.configure do |config|
  config.root = Rails.root
  config.storage :file

  def store_dir
    "#{Rails.root}/public/uploads"
  end

  #I am not sure about this one ~SS
  def cache_dir
    "#{Rails.root}/public/uploads"
  end
end

