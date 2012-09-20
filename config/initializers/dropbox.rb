if Rails.env == "production"
  DROPBOX_CREDENTIALS = {
      app_key: ENV['DROPBOX_APP_KEY'],
      app_secret: ENV['DROPBOX_APP_SECRET']
  }
else
  DROPBOX_CREDENTIALS = Rails.root.join('config/dropbox.yml')
end