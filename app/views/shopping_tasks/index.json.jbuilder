json.array!(@shopping_tasks) do |shopping_task|
  json.extract! shopping_task, :price, :url, :type, :score, :remind
  json.url shopping_task_url(shopping_task, format: :json)
end
