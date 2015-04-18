## middleman config
set :css_dir, 'assets/app'
set :js_dir, 'assets/app'
set :images_dir, 'assets/images'

ignore 'views/*'
ignore 'pages/*'
ignore 'helpers/*'
ignore 'assets/app/components/**/*.css'

## load helpers
helpers do
  load_all 'source/helpers/'
end

## slim in assets
::Sprockets.register_engine('.slim', Slim::Template)

## extensions
activate :livereload, apply_js_live: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash, ignore: 'index.html', exts: (Middleman::Extensions::AssetHash.config[:exts] << '.html')
  activate :gzip
end
