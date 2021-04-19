if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIA2YKSUSEUW76F2YYH'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['railstutorialryo1230']
  end
end