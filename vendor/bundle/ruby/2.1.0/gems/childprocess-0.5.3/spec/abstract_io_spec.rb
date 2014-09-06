require File.expand_path('../spec_helper', __FILE__)

describe ChildProcess::AbstractIO do
  let(:io) { ChildProcess::AbstractIO.new }

  it "inherits the parent's IO streams" do
    io.inherit!

    io.stdout.should eq STDOUT
    io.stderr.should eq STDERR
  end
end
