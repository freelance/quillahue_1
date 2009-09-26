require 'weather_man'
  WeatherMan.partner_id = '0123456789'
  WeatherMan.license_key = '0123456789abcdef'
  
  # Search for a location
  # Returns an array of WeatherMan objects
  locations = WeatherMan.search('New York')
          
  # or if you know the location id or just want to use a US Zip code
  ny = WeatherMan.new('USNY0996')
