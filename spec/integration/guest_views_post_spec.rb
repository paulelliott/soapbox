require 'spec_helper'

context 'as a guest viewing a specific post' do

  let(:post) do
    Fabricate(:post, :title => 'Mind Blowing Shit', :content => "### Greatest Post Ever ###\nWith Content, too!")
  end

  before(:all) do
    post
    visit root_path
    click_link 'Mind Blowing Shit'
  end

  it 'has a permalink url' do
    current_url.should =~ /mind-blowing-shit/
  end

  it 'has the post title' do
    page.should have_css("h2", :text => 'Mind Blowing Shit')
  end

  it 'has the formatted post subheader' do
    page.should have_css('#post h3', :text => 'Greatest Post Ever')
  end

  it 'has the formatted post paragraph' do
    page.should have_css('#post p', :text => 'With Content, too!')
  end

  it 'allows for comments'

end
