json.extract! jornalentry, :id, :date, :list_of_food, :glucose_mg_dl, :notes, :created_at, :updated_at
json.url jornalentry_url(jornalentry, format: :json)
