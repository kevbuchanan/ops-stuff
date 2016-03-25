$: << File.expand_path('../lib', __FILE__)
require 'demo'

use Demo::Instrument
run Demo::App.new
