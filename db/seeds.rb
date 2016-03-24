# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.all
guests = Guest.all

events.destroy_all
guests.destroy_all

11.times do |event_num|

  my_event = Event.create(name: "fake Birthday NO.#{event_num}", address: "421 19th st NE", city: "Washington, DC", day: 2, month: 27, year: 2017, start_time: "11:00am", end_time: '3:30pm', description: "best time ever!!!!!!!!!!!!!", img_url: 'http://vignette3.wikia.nocookie.net/starcars/images/5/5d/Happy-birthday-cake.gif/revision/latest?cb=20121126171657)

  4.times do |guest_num|

    my_event.guests.create(name: "fake guest#{guest_num}", email: "fake_guest@fakefakefakefakestuff.com", message: "i'll be there!!!")

  end


end
