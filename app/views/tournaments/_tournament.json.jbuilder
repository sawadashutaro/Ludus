json.extract! tournament, :id, :name, :image, :game, :date, :address, :detail, :user_id, :is_deleted, :is_completed, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
