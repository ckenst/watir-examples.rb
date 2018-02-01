require 'watir'
require 'net/http'

b = Watir::Browser.new :chrome
website = "http://www.taxcreditco.com"
b.goto website

s = b.link text: 'Services'
s.wait_until_present
s.click
# => Takes us to the services page

d = b.div class: 'col-sm-7'
d.wait_until_present
puts d.text
# => Confirms we are on the Discover Our Services div by printing it.

# next grab all the links within d

# then use net/http to get the status codes


puts b.title
b.close
