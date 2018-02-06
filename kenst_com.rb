require 'watir'
require 'net/http'

# Start Browser
b = Watir::Browser.new :safari

website = "http://www.kenst.com"
b.goto website

# Wait until the resources menu item is present
r = b.link text: 'Resources'
r.wait_until_present

# Make until you see posts
e = b.div class: 'h2.entry-title'
e.wait_until_present

# get the http codes of each link
dos = b.links css: 'h2.entry-title a'
dos.each do |a|
  link = a.attribute_value("href")
  res = Net::HTTP.get_response(URI(link))
  puts res.code
end

b.close
