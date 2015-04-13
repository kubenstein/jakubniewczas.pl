## middleman config
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :layouts_dir, 'views/layouts'
set :partials_dir, 'views/partials'
set :layout, 'application'

ignore 'views/*'
ignore 'pages/*'

## extensions
activate :directory_indexes
activate :livereload

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash, ignore: [/images/]
  activate :relative_assets
  activate :gzip
end
