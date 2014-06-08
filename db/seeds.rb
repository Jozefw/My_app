Article.create(title: "Odin", coment: "ho ho ho")

10.times do
    Article.create(title: Forgery(:lorem_ipsum).words(2, :random =>true),coment: Forgery(:lorem_ipsum).words(5, :random =>true))
  end