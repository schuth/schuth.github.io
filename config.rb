Time.zone = "Berlin"
feed = Hash.new
feed[:host] = 'https://www.blueelk.de'

feed[:title] = 'blueelk'
feed[:description] = 'Writing by Sebastian Schuth'
feed[:feed_url] = '/feed.json'
feed[:home_page_url] = '/'
feed[:icon] = ''
feed[:favicon] = '/favicon.ico'
feed[:expired] = false
feed[:authors] = [
  {"name" => "Sebastian Schuth", "url" => nil, "avatar" => nil}
]
feed[:language] = "en"
# for backwards compatibility to json feed 1.0,
# we fall back to the first of all mentioned authors
feed[:author]  = feed[:authors].first 

config[:json_feed] = feed

configure :development do
  config[:pretty_json_feed] = true
end

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

activate :blog do |blog|
  blog.permalink = "articles/{year}/{month}/{day}/{title}.html"
  blog.layout = "article"
  blog.sources = "articles/{year}-{month}-{day}-{title}.html"
  blog.summary_separator = /MORE/
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Deployment

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

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end


