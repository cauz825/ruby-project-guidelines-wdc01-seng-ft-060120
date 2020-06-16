Artist.destroy_all
User.destroy_all
Venue.destroy_all


mike = User.create(username: "Mike")
zara = User.create(username: "Zara")
paul = User.create(username: "Paul")

jayz = Artist.create(name:"jayz", genre:"rap")
foofighter = Artist.create(name:"foofighter", genre:"rock")
drake = Artist.create(name:"drake", genre:"hip hop")

bellagio = Venue.create(name:"bellagio", city:"las vegas")
nyc = Venue.create(name:"404NYC", city:"new york")
red_rocks = Venue.create(name:"red rocks", city:"denver")

event1 = Event.create