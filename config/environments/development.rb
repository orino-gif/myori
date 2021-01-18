Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
  #ホワイトリスト例外。0.0.0.0/0からのrender console要求を許可する。
  config.web_console.whitelisted_ips = '0.0.0.0/0'
  
   ## メールの配信方法
  ## :smtp     -- config.action_mailer.smtp_settingsで設定可能
  ## :sendmail -- config.action_mailer.sendmail_settingsで設定可能
  ## :file:    -- メールをファイルとして保存する。config.action_mailer.file_settingsで設定可能
  ## :test:    -- メールを配列ActionMailer::Base.deliveriesに保存
  config.action_mailer.delivery_method = :smtp

  ## メール送信失敗時エラーとするかどうか
  config.action_mailer.raise_delivery_errors = true

  ## SMTPの設定
  config.action_mailer.smtp_settings = {
    ## SMTPサーバでSTARTTLSが有効かどうかを検出して有効にする
    :enable_starttls_auto => true,

    ## リモートメールサーバ
    :address => 'smtp.gmail.com',

    ## メールサーバのポート
    :port => '587',

    ## HELOドメイン
    :domain => 'smtp.gmail.com',

    ## メールサーバの認証が必要な場合の認証方法
    ## :plain    -- パスワードを平文で送信
    ## :login    -- パスワードをBase64でエンコード
    ## :cram_md5 -- チャレンジ/レスポンスによる情報交換と、MD5アルゴリズムによる重要情報のハッシュ化の組み合わせ
    :authentication => 'plain',

    ## メールサーバの認証に使用するユーザ名
    :user_name => 'orino0710@gmail.com',

    ## メールサーバの認証に使用するパスワード
    :password => 'xqgszkrfbgwhvbsm'
  }
end
