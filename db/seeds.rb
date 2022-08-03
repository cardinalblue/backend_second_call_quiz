# frozen_string_literal: true

srand(9527)
categories = Category.create!(%w[backend frontend devops].map{ { name: _1 } })
authors = Author.create!(%w[john mary tony].map! { { name: _1 } })
words = %w[
  a ac accumsan adipiscing aenean aliquam aliquet amet ante arcu at auctor augue congue consectetur consequat convallis cubilia curabitur curae; cursus dictum dictumst dignissim dolor donec efficitur egestas eget eleifend elementum elit enim erat eros est et etiam eu euismod facilisis faucibus felis finibus fusce gravida habitasse hac hendrerit id imperdiet in integer interdum ipsum justo lacinia lectus libero ligula lobortis lorem luctus magna mattis mauris maximus metus mi mollis morbi nam nec neque nibh nisi nisl nulla nullam nunc odio orci pellentesque platea posuere praesent pretium primis purus quam quis quisque risus rutrum sagittis sapien scelerisque sed sem semper sit suscipit tellus tempor tincidunt tortor tristique turpis ultrices ultricies urna ut varius vel venenatis vestibulum viverra volutpat
]
posts = Post.create!(
  100.times.map do
    {
      title: words.sample(2 + rand(3)).join(' '),
      content: words.sample(100 + rand(101)).join(' '),
      author: authors.sample,
      category: categories.sample
    }
  end
)
Comment.create!(
  500.times.map do
    {
      content: words.sample(10+ rand(11)).join(' '),
      post: posts.sample
    }
  end
)
