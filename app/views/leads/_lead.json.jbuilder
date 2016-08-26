json.extract! lead, :id, :contact, :source, :date, :description, :active, :salesperson_id, :created_at, :updated_at
json.url lead_url(lead, format: :json)