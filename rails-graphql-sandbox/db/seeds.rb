require "faker"

10.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.paragraph(sentence_count: 3),
  ).tap do |post|
    Comment.create(
      post: post,
      message: Faker::Lorem.paragraph(sentence_count: 2),
    )
  end
end
