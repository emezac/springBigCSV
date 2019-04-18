json.extract! logupload, :id, :identifier, :filename, :filelocation, :date, :version, :created_at, :updated_at
json.url logupload_url(logupload, format: :json)
