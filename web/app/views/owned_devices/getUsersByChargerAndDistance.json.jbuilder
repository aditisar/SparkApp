json.array!(@users_with_charger) do |user|
  json.extract! user, :id, :first_name, :last_name, :latitude, :longitude
  json.dist user.distance_from_current_user(current_user.latitude,current_user.longitude)
end
