

#!/usr/bin/ruby

require 'rubygems'
require 'fileutils'


ENV["RAILS_ENV"] ||= "development"
require File.dirname(__FILE__) + "/../config/environment"

@climas = Clima.find(:all)







