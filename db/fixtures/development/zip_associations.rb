hotel = Venue.find_by(name: "Hotel California")
red = Venue.find_by(name: "Red Head Piano")
cloud = Venue.find_by(name: "Cloud 9")

drink_m1 = Menu.find(1)
drink_m2 = Menu.find(2)
app_m = Menu.find(3)
entree_m = Menu.find(4)

drinks = Item.where(category: "Drink")
entree = Item.where(category: "Entree")
appetizer = Item.where(category: "Appetizer")

# drink_m1.items << drinks
# drink_m2.items << drinks
# app_m.items << appetizer
# entree_m.items << entree

# hotel.menus << [drink_m1,  app_m]
# red.menus << [drink_m2,  entree_m]
# cloud.menus << [drink_m1,  app_m, entree_m]
