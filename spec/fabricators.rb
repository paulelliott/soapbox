Fabricator(:post) do
  title { Faker::Lorem.words.join(' ').titleize }
  published_on { Date.today - rand(30).days }
  content do
    %<
### #{Faker::Lorem.words.join(' ').titleize}
#{Faker::Lorem.paragraph}
    >
  end
end
