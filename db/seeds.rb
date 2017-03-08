Video.delete_all

%w(76979871 204420014).each do |uid|
  Video.create(link: "http://vimeo.com/#{uid}")
  # that's how the link will be entered by the user. we fetch the uid later inside the model
end