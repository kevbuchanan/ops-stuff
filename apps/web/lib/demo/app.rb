require 'sinatra/base'
require 'logger'

module Demo
  class App < Sinatra::Base
    Logger = ::Logger.new(STDOUT)

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
