## middleman config
set :css_dir, 'assets/app'
set :js_dir, 'assets/app'
set :images_dir, 'assets/images'

ignore 'views/*'
ignore 'pages/*'
ignore 'helpers/*'
ignore 'assets/app/components/**/*.css'

## deploy
activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote = 'git@github.com:kubenstein/kubenstein.github.io.git'
  deploy.branch = 'master'
  deploy.build_before = true
end

## load helpers
helpers do
  load_all 'source/helpers/'
end

## slim in assets
::Sprockets.register_engine('.slim', Slim::Template)


configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash, ignore: 'index.html', exts: (Middleman::Extensions::AssetHash.config[:exts] << '.html')
  activate :gzip
end


configure :development do
  activate :livereload, apply_js_live: false

  # redirect all 404 to index.html
  # this is useful when livereload reloads Angular app with frontend routing
  class ServeRoot
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      if status == 404 && !env['PATH_INFO'].include?('api/')
        env['PATH_INFO'] = '/'
        status, headers, response = @app.call(env)
      end
      [status, headers, response]
    end
  end
  use ServeRoot
end