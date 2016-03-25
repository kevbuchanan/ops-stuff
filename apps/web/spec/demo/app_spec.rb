require 'rspec'
require 'rack/test'

require 'demo'

describe Demo::App do
  include Rack::Test::Methods

  let(:app) { Demo::App.new }

  it "responds with hello world" do
    response = get '/'

    expect(response.body).to eq("Hello World")
  end

  it "handles errors" do
    response = get '/error'

    expect(response.status).to eq(500)
    expect(response.body).to eq("Whoops")
  end
end
