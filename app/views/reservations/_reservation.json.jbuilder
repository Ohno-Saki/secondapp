json.extract! reservation, :id, :start_day, :finish_day, :number_of_people, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
