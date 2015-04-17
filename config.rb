## middleman config
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :frontmatter_extensions, %w(.html .slim)

ignore 'views/*'
ignore 'pages/*'

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
  activate :asset_hash, exts: (Middleman::Extensions::AssetHash.config[:exts] << '.template')
  activate :gzip, exts: (Middleman::Extensions::Gzip.config[:exts] << '.template')
end
