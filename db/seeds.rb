500.times do
    Post.create! title: Faker::Lorem.sentence
end
