require 'spec_helper'

describe Post do

  describe "#to_param" do

    let(:post) { Fabricate(:post, :title => "something awesome") }

    it 'returns the permalink' do
      post.to_param.should == 'something-awesome'
    end

  end

end
