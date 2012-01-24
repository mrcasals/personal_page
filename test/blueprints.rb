require 'machinist/active_record'

Book.blueprint do
  title {"Post #{sn}"}
  description { "Lorem ipsum dolor sit amet"}
  author { "Auhtor #{sn}"}
  rating { rand(11) }
  total_pages { rand(110) }
end

Post.blueprint do
  title {"Post #{sn}"}
  body { "Lorem ipsum dolor sit amet"}
end
