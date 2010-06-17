class Post
  include Mongoid::Document
  field :permalink
  field :title
  field :published_on, :type => Date
  field :content
  index [[:published_on, Mongo::DESCENDING]]

  named_scope :published, where(:published_on.lt => Time.now)
end
