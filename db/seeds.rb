# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

device = Device.create(title: "A Device")

start = DateTime.parse("2015-01-01T00:00:00+0000")
finish = start + 1.year
datetime = start
randomizer = Random.new

while(datetime < finish) do
  Datum.create(device: device, recorded_at: datetime, value: randomizer.rand(0.0..100.0))
  datetime += 1.week
end
