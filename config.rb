#
# BASEKIT CONFIG
# Version 0.1
#
# 1. Directories
# 2. Assets
# 3. Layouts
# 4. Helpers
# 5. Extensions
# 6. Options
# 7. Eviroments
# 8. Deploy
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

# sprockets.append_path "#{root}/styles/"

# after_configuration do
#   sprockets.append_path "#{root}/styles"
# sprockets.append_path "#{root}/assets/stylesheets"
# sprockets.append_path "#{root}/assets/javascripts"
# sprockets.append_path "#{root}/vendor/bower"
# sprockets.import_asset 'jquery'
# end



# 3. LAYOUTS

# https://middlemanapp.com/basics/layouts/

# set :layout,         "default"
# page '/*', layout: "default"

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )



# 4. HELPERS

# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end



# 5. EXTENSIONS

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

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

# set :relative_links, false
# set :show_exceptions, true



# 7. ENVIROMENTS

# Build-specific after_configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :development do
  activate :livereload
  set :debug_assets, true
end

configure :build do
  # activate :imageoptim
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
  # activate :asset_hash
  # activate :relative_assets
  # set :relative_links, false
end



# 8. DEPLOY

# activate :deploy do |deploy|
#     deploy.deploy_method = :git
#     deploy.build_before = true
# end

# Optional Settings

# deploy.remote   = 'custom-remote' # remote name or git url, default: origin
# deploy.branch   = 'custom-branch' # default: gh-pages
# deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
# deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
