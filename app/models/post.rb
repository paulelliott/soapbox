class Post < ActiveRecord::Base
  has_slug :slug_column => :permalink, :sync_slug => true
end
