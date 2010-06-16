Fabricator(:post) do
  title { Faker::Lorem.words.join(' ') }
end
