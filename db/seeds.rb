# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Category.create(title: "breakfast",image: "http://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/5/19/0/FNK_300-Calorie-Breakfasts-Opener_s4x3.jpg.rend.hgtvcom.966.725.suffix/1463631026438.jpeg", description: "Want to start off your morning right? Come try our hot & fresh breakfast sandwiches that will send your taste buds into a frenzy!")
Item.create(title: "Egg and cheese on crousant", description: "Egg and cheese on crousant toasted", price: 2.14, available: true, image: "https://www.dunkindonuts.com/content/dam/dd/img/products/sandwiches-wraps/sausage-egg-cheese/tiles/lp-promo-x2-sausage-egg-&-cheese-620x506.jpg", category_id: c1.id)
Item.create(title: "Bacon egg and cheese", description: "Bacon egg and cheese", price: 3.75, available: true, image: "https://www.dunkindonuts.com/content/dam/dd/img/products/sandwiches-wraps/big-toasted/tiles/lp-promo-x2-big-&-toasted-620x506.jpg", category_id: c1.id)
Item.create(title: "Asian omelet", description: "Perfectly cooked omelet", price: 5.20, available: true, image: "https://www.mrbreakfast.com/images/1426_denver_omelet.jpg", category_id: c1.id)
Item.create(title: "Paleo Omelet with red pepper", description: "Paleo Omelet with red pepper", price: 7.00, available: true, image: "https://paleoporn.com/wp-content/uploads/2014/12/Paleo-Recipe-Paleo-Breakfast-Omelet-with-Red-Pepper-03.jpg", category_id: c1.id)
