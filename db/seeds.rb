# frozen_string_literal: true

20.times do
  Article.create(
    title: Faker::Books::Lovecraft.tome,
    content: Faker::Books::Lovecraft.paragraph
  )
end
