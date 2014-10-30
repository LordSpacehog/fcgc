json.array!(@sub_forums) do |sub_forum|
  json.extract! sub_forum, :id, :name, :description, :category_id
  json.url sub_forum_url(sub_forum, format: :json)
end
