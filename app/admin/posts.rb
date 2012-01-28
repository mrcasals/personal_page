ActiveAdmin.register Post do
  form :partial => "form"

  index as: :blog do
    title :title
    body :body
  end

end
