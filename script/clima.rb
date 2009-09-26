require 'rubygems'
  require 'r_weather'

  RWeather.partner_id = "1140388152"
  RWeather.key = "b03932fa5f11a501"

  locations = RWeather.search('san carlos de bariloche') # that's where I'm from :)
  unless locations.empty?
    locations.each_with_index do |location, i|
      puts "#{i}) #{location.id} - #{location.name}"
    end
    cc = RWeather.current_conditions(locations.first.id)
    puts "Current conditions: "
    puts "  Temperature: #{cc.tmp}"
    puts "  Feels like:  #{cc.flik}"
    
    @clima = Clima.new
    
    @clientes.save
    
    
  end
