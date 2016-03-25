require 'sinatra/base'
require 'demo/logger'

module Demo
  class App < Sinatra::Base
    get '/heartbeat' do
      heartbeat = File.expand_path('../../../public/heartbeat', __FILE__)
      if File.exist?(heartbeat)
        [200, "OK"]
      else
        [503, "Unavailable"]
      end
    end

    get '/' do
      Logger.info('Received request')

      [200, "Hello World"]
    end

    get '/error' do
      begin
        raise 'Something went wrong'
      rescue => e
        Logger.error(e.message)

        [500, "Whoops"]
      end
    end
  end
end
