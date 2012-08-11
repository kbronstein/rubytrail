# Download a web page and store it in a file

require 'open-uri'

page = 'podcasts'
file_name = "#{page}.html"
web_page = open("http://pragprog.com/#{page}")
File.open(file_name, 'w') do |file|
  begin
    web_page.gets do |line|
      file.puts line
    end
  rescue Exception => ex
     STDERR.puts "Failed to download page: #{page}: #{$!}"
     File.delete(file_name)
     raise
  end
end
