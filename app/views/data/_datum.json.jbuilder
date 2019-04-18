json.extract! datum, :id, :identifier, :rownumber, :phone, :email, :first, :last, :created_at, :updated_at
json.url datum_url(datum, format: :json)
