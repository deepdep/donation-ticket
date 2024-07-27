json.extract! ticket, :id, :user_id, :amount, :used, :token, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
