class Post < ActiveRecord::Base
  has_slug :slug_column => :permalink, :sync_slug => true, :prepend_id => false
end
