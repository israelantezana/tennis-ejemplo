When(/^ingreso a la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^deberia ver la imagen "(.*?)"$/) do |imagen|
  last_response.should have_xpath("//img[@src=\"#{imagen}\"]")
end