class Post

  include Mongoid::Document

  field :permalink
  field :title
  field :published_on, :type => Date
  field :content

  index :permalink, :unique => true
  index [[:published_on, Mongo::DESCENDING]]

  before_save :generate_permalink

  named_scope :published, where(:published_on.lt => Time.now)

  def to_param
    permalink
  end

  protected

  def generate_permalink
    self.permalink = title.to_permalink
  end

end
