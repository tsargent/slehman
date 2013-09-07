CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  }
  config.fog_directory = ENV['AWS_BUCKET']
  config.fog_public = true
end


# storage = Fog::Storage.new(:provider => 'AWS', :aws_access_key_id => 'AKIAIZ4MWNV6DLN4JA5A', :aws_secret_access_key => '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')



# aws_access_key_id: 'AKIAIZ4MWNV6DLN4JA5A',
# aws_secret_access_key: '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'
