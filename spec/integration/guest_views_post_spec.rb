require 'spec_helper'

context 'as a guest viewing a specific post' do

  let(:post) { Fabricate(:post, :title => 'Mind Blowing Shit') }

  before(:all) do
    post
    visit '/'
    click_link 'Mind Blowing Shit'
  end

  it 'has a permalink url' do
    current_url.should =~ /mind-blowing-shit/
  end

  it 'has the post title' do
    page.should have_css("h2", :text => 'Mind Blowing Shit')
  end

  it 'has the post content'
  it 'allows for comments'

end
