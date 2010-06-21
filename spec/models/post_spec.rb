require 'spec_helper'

describe Post do

  describe "#to_param" do

    let(:post) { Fabricate(:post, :title => "something awesome") }

    it 'returns the permalink' do
      post.to_param.should == 'something-awesome'
    end

  end

  describe "#published" do
    let(:newer_post) { Fabricate(:post, :published_on => 1.day.from_now) }
    let(:older_post) { Fabricate(:post, :published_on => 5.days.ago) }

    before(:all) {newer_post; older_post}

    it 'return things that are published on dates now or in the past' do
      Post.published.should == [older_post]
    end

    it 'the named_scope returns it in chronological order' do
      a_post = Fabricate(:post, :published_on => 1.day.ago)
      Post.published.map.should == [a_post, older_post]
    end
  end

end
