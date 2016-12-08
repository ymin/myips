require "spec_helper"
require "ipaddress"

describe Myips do
  it "has a version number" do
    expect(Myips::VERSION).not_to be nil
  end

  it "gives back correct local ip format" do
    expect(IPAddress.valid? Myips.local_ip).to eq(true)
  end

  it "gives back correct public ip format" do
    expect(IPAddress.valid? Myips.public_ip).to eq(true)
  end
end
