require 'spec_helper'

context 'as a guest viewing a specific post' do

  it 'has a permalink url'
  let(:post) { Fabricate(:post, :title => 'Mind Blowing Shit') }

  before do
    post
    visit '/'
    click_link 'Mind Blowing Shit'
  end

  it 'has the post title' do
    page.should have_css("h2", :text => 'Mind Blowing Shit')
  end

  it 'has the post content'
  it 'allows for comments'

end
