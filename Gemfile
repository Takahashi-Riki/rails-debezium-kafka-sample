source "https://rubygems.org"

ruby "3.2.2"

# --- CDCパイプラインの必須Gem ---
gem "rails", "~> 7.1.3"         # Railsフレームワーク本体
gem "mysql2", ">= 0.4.4"        # MySQLデータベースアダプタ
gem "unicorn"                   # Webサーバー (Pumaの代替)
gem "karafka", "~> 2.3.0"       # Kafkaコンシューマーフレームワーク（バージョン固定推奨）

# --- Rails標準のGem (任意だが、Webアプリケーションとして機能させるために推奨) ---
gem "sprockets-rails"           # Asset Pipeline用
gem "importmap-rails"           # JavaScript管理
gem "turbo-rails"               # Hotwireフレームワーク
gem "stimulus-rails"            # Hotwireフレームワーク
gem "jbuilder"                  # JSONレスポンス生成

# --- 開発・テスト用の補助Gem (本番環境では不要な場合もある) ---
gem "tzinfo-data", platforms: %i[ windows jruby ] # タイムゾーン情報
gem "bootsnap", require: false  # Rails起動高速化

group :development, :test do
  gem "debug", platforms: %i[ mri windows ] # デバッガー
end

group :development do
  gem "web-console"               # ブラウザベースのデバッグコンソール
end

group :test do
  gem "capybara"                  # E2Eテスト用
  gem "selenium-webdriver"        # E2Eテスト用
end 