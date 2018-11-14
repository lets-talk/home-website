#
# WEBSITE CONFIG
# Version 0.1
#
# 1. Directories
# 2. Assets
# 3. Layouts
# 4. Eviroments
#

# 1. DIRECTORIES

set :source,         "source"
set :build_dir,      "docs"

set :data_dir,       "data"
set :locales_dir,    "locales"
set :helpers_dir,    "helpers"

# Relative to source

set :layouts_dir,    "layouts"
set :partials_dir,   "partials"

set :css_dir,        "stylesheets"
set :js_dir,         "javascripts"
set :images_dir,     "images"
set :fonts_dir,      "fonts"

# 2. ASSETS

activate :sprockets

after_configuration do
    sprockets.append_path File.join( root, "bower/" )
    sprockets.append_path File.join( root, "styles/" )
end

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# 3. LAYOUTS

activate :directory_indexes

set :index_file, "home.html"

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# 4. ENVIROMENTS

configure :development do
  activate :livereload
  set :debug_assets, true
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end

