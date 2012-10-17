require "spec_helper"

describe "WAMP::VERSION::STRING" do
  it "should be 0.0.0" do
    WAMP::VERSION::STRING.should == "0.0.0"
  end
end
