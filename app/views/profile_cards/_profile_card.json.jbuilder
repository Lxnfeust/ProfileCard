json.extract! profile_card, :id, :background, :picture, :first_name, :last_name, :birth_year, :hobbies, :created_at, :updated_at
json.url profile_card_url(profile_card, format: :json)
