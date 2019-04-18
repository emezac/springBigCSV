json.extract! errorlog, :id, :identifier, :rownumber, :description, :created_at, :updated_at
json.url errorlog_url(errorlog, format: :json)
