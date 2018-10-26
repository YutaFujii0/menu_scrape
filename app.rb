require "sinatra"
require "sinatra/reloader"
require "pry-byebug"
require "better_errors"


set :views, (proc { File.join(root, "app/views") })
set :bind, '0.0.0.0'



get '/' do
  # TODO
  # 1. fetch posts from database.
  # 2. Store these posts in an instance variable
  # 3. Use it in the `app/views/posts.erb` view
  menu_image_urls = []
  url = "https://www.google.co.jp/search?q=#{word}&source=lnms&tbm=isch"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search(".rg_ic").first[3].each do |element|
    element.attribute["src"].value
  end
  erb :menus # Do not remove this line
end

# TODO: add more routes to your app!
