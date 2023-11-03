json.extract! phone_list, :id, :name, :phone_number, :created_at, :updated_at
json.url phone_list_url(phone_list, format: :json)
