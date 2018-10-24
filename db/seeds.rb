# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.create(
  email: "guest1@example.com",
  password: "password",
  name: "guest1"
)

Host.create(
  email: "host1@example.com",
  password: "password",
  name: "host1"
)

# sample_rooms = []
# host_id = Host.first.id
# (1..10).each do |i|
#   sample_rooms.push(
#     {
#       host_id: host_id
#       location: '海'
#       price: 35000,
#       city: "神奈川県, 箱根"
#       country: "日本"
#       title: "Sample民泊#{i}",
#       rating: 4.5,
#       occupancy: 2,
#       prefecture: '沖縄県',
#       address: '沖縄県沖縄市'
#     }
#   )
# end
# Room.create(sample_rooms)
