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


# set :source,         "notifications"
# set :build_dir,      "docs/notifications"

set :source,       "source"
set :build_dir,    "docs"

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
    # sprockets.append_path File.join( root, "bower/" )
    sprockets.append_path File.join( root, "styles/" )
end

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# activate :syntax do |syntax|
#   syntax.css_class     = "code-highlight"
#   syntax.line_numbers  = true
# end

# activate :syntax, :line_numbers => true
# activate :syntax, line_numbers: true, css_class: "code-highlight"

# activate :i18n, :data => "locales"
# activate :directory_indexes



# 6. OPTIONS
set :relative_links, true

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-61272908-1' 
end

# 3. LAYOUTS

set :markdown, parse_block_html: true, auto_ids: false

activate :directory_indexes

set :index_file, "index.html"

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# 4. ENVIROMENTS
set :facebook, "https://facebook.com/LetsTalkchat"
set :mailto_sales, "mailto:ventas@ltmessenger.com"

configure :development do
  activate :livereload
  set :debug_assets, true
  set :base_url, 'http://localhost:4567/'
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
  set :base_url, 'https://ltb.im/'
end

