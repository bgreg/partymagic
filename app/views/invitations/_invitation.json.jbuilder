json.extract! invitation, :id, :secret_id, :belongs_to, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
