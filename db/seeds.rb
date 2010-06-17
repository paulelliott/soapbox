require 'spec/fabricators'

Post.delete_all
8.times do
  Fabricate(:post).save
end
