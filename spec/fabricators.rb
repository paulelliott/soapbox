Fabricator(:post) do
  title { Faker::Lorem.words.join(' ').titleize }
  published_on { Date.today - rand(30).days }
end
