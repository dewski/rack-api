require "spec_helper"

describe Rack::API do
  before do
    @app = MyApp
  end

  it "renders action from MyApp" do
    get "/v1"
    last_response.body.should == {"myapp" => true}.to_json
  end
end
