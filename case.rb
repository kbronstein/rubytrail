url = "http://www.google.com?q=foobar"

protocol = case url
  when /^http:/
    'HTTP'
  when /^ftp:/
    'FTP'
  else
    'Unknown'
end

puts protocol # =>  HTTP


puts  case 'foobar'
        when 'foo'
          'You entered foo'
        when 'bar'
          'You entered bar'
      end

# => nil (As there is no else and no when matches)
