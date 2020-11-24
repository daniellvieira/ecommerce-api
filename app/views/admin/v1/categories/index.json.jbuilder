json.categories do
  json.array! @categories, :id, :name
end

# {'categories': [
#   {'id': 1, 'name': 'terror'},
#   {'id': 2, 'name': 'suspense'},
#   {'id': 3, 'name': 'romance'}
# ]}