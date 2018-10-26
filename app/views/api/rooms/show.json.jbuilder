json.id @room.id
json.title @room.title
json.registration_id @room.registration_id
json.body @room.body
json.image_url @room.image_url
json.prefecture @room.prefecture
json.city @room.city
json.latitude @room.latitude.to_f
json.longitude @room.longitude.to_f
json.max_stay_num @room.max_stay_num
json.check_in_time @room.check_in_time
json.check_out_time @room.check_out_time
json.bed_room_num @room.bed_room_num
json.bed_num @room.bed_num
json.toilet_num @room.toilet_num
json.kitchen_num @room.kitchen_num
json.facilyty do
  json.array! @room.facilyty.split(',')
end
json.amenity do
  json.array! @room.amenity.split(',')
end
json.pet @room.pet
json.child @room.child
json.access @room.access
json.price @room.price
json.reserved_date do
  json.array! @room.reserved_dates.map(&:reserved_date)
end
json.options do
  json.array! @room.options do |option|
    json.id option.id
    json.name option.name
    json.image_url option.image_url
  end
end
json.reviews do
  json.satisfaction (@room.room_reviews.map(&:satisfaction).inject(:+)/@room.room_reviews.size).to_f.round(1)
  json.cleanliness (@room.room_reviews.map(&:cleanliness).inject(:+)/@room.room_reviews.size).to_f.round(1)
  json.cost_performance (@room.room_reviews.map(&:cost_performance).inject(:+)/@room.room_reviews.size).to_f.round(1)
  json.amenity (@room.room_reviews.map(&:amenity).inject(:+)/@room.room_reviews.size).to_f.round(1)
  json.location (@room.room_reviews.map(&:location).inject(:+)/@room.room_reviews.size).to_f.round(1)
  json.access (@room.room_reviews.map(&:access).inject(:+)/@room.room_reviews.size).to_f.round(1)
end
json.room_reviews do
  json.array! @room.room_reviews do |rr|
    ave = (rr.satisfaction + rr.cleanliness + rr.cost_performance + rr.amenity + rr.location + rr.access) / 6
    json.id rr.id
    json.review ave.to_f.round(1)
    json.body rr.body
    json.created_at rr.created_at
  end
end
