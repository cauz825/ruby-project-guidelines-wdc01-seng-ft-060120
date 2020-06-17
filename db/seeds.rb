Artist.destroy_all
User.destroy_all
Venue.destroy_all
Event.destroy_all
UserEvent.destroy_all


mike = User.create(username: "mike")
zara = User.create(username: "zara")
paul = User.create(username: "paul")
maddie = User.create(username: "maddie")

jayz = Artist.create(name:"Jay-Z", genre:"rap")
foofighter = Artist.create(name:"Foo Fighters", genre:"rock")
drake = Artist.create(name:"Drake", genre:"hip hop")
dirtyheads = Artist.create(name:"Dirty Heads", genre:"rock")
gunsnroses = Artist.create(name:"Guns N Roses", genre:"rock")

bellagio = Venue.create(name:"Bellagio", city:"Las Vegas")
nyc = Venue.create(name:"404NYC", city:"New York City")
red_rocks = Venue.create(name:"Red Rocks", city:"Denver")
bercy = Venue.create(name:"Bercy", city:"Paris")
staples = Venue.create(name:"Staples Center", city:"Los Angeles")

event1 = Event.create(artist:jayz, venue:nyc, event_date:"January 15, 2020")
event2 = Event.create(artist:foofighter, venue:red_rocks, event_date:"July 4, 2019")
event3 = Event.create(artist:drake, venue:bellagio, event_date:"June 12, 2020")
event4 = Event.create(artist:drake, venue:nyc, event_date:"May 5, 2020")
event5 = Event.create(artist:dirtyheads, venue:staples, event_date:"June 1, 2020")

user_event1 = UserEvent.create(user:mike, event:event2, rating:9)
user_event2 = UserEvent.create(user:mike, event:event5, rating:8)
user_event3 = UserEvent.create(user:zara, event:event1, rating:7)
user_event4 = UserEvent.create(user:zara, event:event2, rating:5)
user_event5 = UserEvent.create(user:paul, event:event5, rating:2)
user_event6 = UserEvent.create(user:maddie, event:event3, rating:4)
user_event7 = UserEvent.create(user:paul, event:event1, rating: 10)
user_event8 = UserEvent.create(user:maddie, event:event4, rating:3)
user_event9 = UserEvent.create(user:zara, event:event4, rating:10)