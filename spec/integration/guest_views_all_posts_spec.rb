require 'spec_helper'

context 'as a guest viewing the front page' do

  context 'with 8 posts' do

    let(:recent_posts) do
      Post.limit(5).order_by([:published_on, :desc])
    end

    before(:all) do
      8.times do |i| #forces generation in reverse order
        Fabricate(:post, :published_on => (10-i).days.ago, :content => 'a'*500)
      end
      visit '/'
    end

    it 'displays 5 most recent posts in order of descending published date' do
      recent_posts.each_with_index do |post, index|
        page.should have_css(".post:nth-child(#{index+1}) h3", :text => post.title)
      end
    end

    it 'shows pagination links to access additional posts' do
      page.should have_css(".pagination")
    end

    it 'displays the publish date for each post' do
      recent_posts.each_with_index do |post, index|
        page.should have_css(".post:nth-child(#{index+1}) .published_on", :text => post.published_on.to_s(:long))
      end
    end

    it 'displays an excerpt from each post' do
      recent_posts.each_with_index do |post, index|
        page.should have_css(".post:nth-child(#{index+1}) .content", :text => "#{'a'*397}...")
      end
    end

  end

  context 'my info contains' do

    it 'a short statement about me'

    it 'a link to my twitter page'

    it 'a link to my github page'

  end

end
