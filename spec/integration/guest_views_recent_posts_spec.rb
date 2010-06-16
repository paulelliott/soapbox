require 'capybara/rails'
include Capybara

context 'as a guest viewing the front page' do

  context 'with 8 posts' do

    before do
      8.times { Fabricate(:post) }
      visit '/'
    end

    it 'limits to the most 5 recent posts' do
      page.should have_css('.post', :count => 5)
    end

    it 'shows pagination links to access additional posts' do
      page.should have_css(".pagination")
    end

  end

  context 'my social links' do

    it 'has a link to my twitter page'

    it 'has a link to my github page'

  end

end
