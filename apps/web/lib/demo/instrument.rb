require 'demo/logger'

module Demo
  class Instrument
    def initialize(app)
      @app = app
    end

    def call(env)
      path = env['PATH_INFO']
      Logger.info("Request #{path} started")

      response = @app.call(env)

      Logger.info("Request #{path} complete")
      response
    end
  end
end
