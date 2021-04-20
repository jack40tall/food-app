List<Dish> dishes = [
  Dish(
      name: 'Katsu Curry',
      restaurant: "Ks Kitchen",
      hoursOpen: '12am - 10pm',
      rating: 5.0,
      distance: 10.1,
      imagePath: 'dish_images/ks_katsu.jpeg',
      id: 0),
  Dish(
      name: 'Gyoza',
      restaurant: "Ks Kitchen",
      hoursOpen: '12am - 10pm',
      rating: 4.5,
      distance: 10.1,
      imagePath: 'dish_images/ks_gyoza.jpeg',
      id: 1),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Yamato',
      hoursOpen: '8am - 10pm',
      rating: 4.5,
      distance: 4.1,
      imagePath: 'dish_images/yamato_katsu.jpeg',
      id: 2),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'JINYA',
      hoursOpen: '8am - 12pm',
      rating: 4.2,
      distance: 8.2,
      imagePath: 'dish_images/jinya_katsu.jpeg',
      id: 3),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 4.0,
      distance: 20.5,
      imagePath: 'dish_images/asa_katsu.jpeg',
      id: 4),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Sushi-ya',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/sushiya_katsu.jpeg',
      id: 5),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'JINYA',
      hoursOpen: '8am - 12pm',
      rating: 4.2,
      distance: 8.2,
      imagePath: 'dish_images/jinya_katsu.jpeg',
      id: 6),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 4.0,
      distance: 20.5,
      imagePath: 'dish_images/asa_katsu.jpeg',
      id: 7),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Sushi-ya',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/sushiya_katsu.jpeg',
      id: 8),
  Dish(
      name: 'Ramen',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/asa_ramen.jpg',
      id: 9),
  Dish(
      name: 'Gyoza',
      restaurant: 'Five Sushi Brothers',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/fivesushibros_gyoza.jpg',
      id: 10),
  Dish(
      name: 'Sushi',
      restaurant: 'Five Sushi Brothers',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/fivesushibros_sushi.jpg',
      id: 11),
  Dish(
      name: 'Sushi',
      restaurant: 'Happy Sumo',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/happysumo_sushi.jpg',
      id: 12),
  Dish(
      name: 'Ramen',
      restaurant: 'Koi Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/koi_ramen.jpg',
      id: 13),
  Dish(
      name: 'Ramen',
      restaurant: 'Ramen 930',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/ramen930_ramen.jpg',
      id: 14),
  Dish(
      name: 'Gyoza',
      restaurant: 'Yamato',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/yamato_gyoza.jpeg',
      id: 15),
  Dish(
      name: 'Sushi',
      restaurant: 'Yummy\'s',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/yummys_sushi.jpg',
      id: 16),
  Dish(
      name: 'Pizza',
      restaurant: 'Brick Oven Pizza',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/brickoven_pizza.jpg',
      id: 17),
  Dish(
      name: 'Pizza',
      restaurant: 'Slab',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/slab_pizza.jpg',
      id: 18),
  Dish(
      name: 'Pizza',
      restaurant: 'Pizza Pie Cafe',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/pizzapiecafe_pizza.jpg',
      id: 19),
  Dish(
      name: 'Hamburger',
      restaurant: 'Red Robin\'s',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/redrobins_burger.jpg',
      id: 20),
  Dish(
      name: 'Hamburger',
      restaurant: 'McDonald\'s',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/mcdonalds_burger.jpg',
      id: 21),
  Dish(
      name: 'Hamburger',
      restaurant: 'Denny\'s',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/dennys_burger.jpg',
      id: 22),
];

class Dish {
  final String name;
  final String restaurant;
  final String hoursOpen;
  final double rating;
  final double distance;
  final String imagePath;
  final int id;

  const Dish(
      {this.name,
      this.restaurant,
      this.hoursOpen,
      this.rating,
      this.distance,
      this.imagePath,
      this.id});
}

List<Dish> getDishData() {
  return dishes;
}

Map<String, String> addressMap = {
  "Ks Kitchen": "322 W Center St\n Provo, UT 84601",
  "Yamato": "1074 State St\n Orem, UT 84097",
  "JINYA": "5905 State St\n Murray, UT 84107",
  "Asa Ramen": "1120 State St\n Orem, UT 84097",
  "Sushi-ya": "1545 State St\n Orem, UT 84097",
  "Five Sushi Brothers": "445 Freedom Blvd 200 W\n Provo, UT 84601",
  "Happy Sumo": "4801 N University Ave\n Provo, UT 84604",
  "Koi Ramen": "1283 N University Ave #102\n Provo, UT 84604",
  "Ramen 930": "719 E University Pkwy\n Orem, UT 84097",
  "Yummy's": "360 S State St Bldg C Suite 102\n Orem, UT 84058",
};

// Dish Id : {Reviews}
Map<int, List<Review>> dishReviews = {
  0: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "By far one of the tastiest Katsu dishes I've had outside of Japan"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  1: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(3.0,
        "Decent Katsu, but not as good as in Japan."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  2: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "My wife and I love Yamato! I lived in Japan for a few years, and we are both snobs for good food. These guys consistently have great food. The owners and staff are Japanese mostly. The environment/acoustics are nice. Try the yam and Liz rolls. They're cheap and delicious"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  3: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "I love Jinya! Some of the appetizers aren't as good as they could be, but I never find myself unsatisfied with their entrees."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  4: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "Asa Ramen is best known for their ramen, of course, but their Katsu curry isn't bad either!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  5: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "I usually don't get anything but sushi at sushi restaurants, but I'm glad I tried their Katsu Curry!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  6: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "Jinya's entrees are always on point, and their Katsu Curry is no exception."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  7: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "I'm so glad their curry turned out to be okay- and it was more than okay!  I loved it!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  8: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "The sushi here is great, but so is their curry!  Pleasantly surprised."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  9: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "What do you expect?  It's Asa Ramen.  If you miss Japan's ramen, this is the place to go."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  10: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "Worth a few extra bucks to mix up your sushi dinner!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  11: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "The Sushi Brothers make some great affordable sushi!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  12: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "Happy Sumo has a lot of great dishes, and the sushi is one of them.  Two thumbs up!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  13: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(2.8,
        "Honestly, not that great when you think that Asa Ramen is just a little bit away."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  14: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(1.8,
        "Asa Ramen is literally right there.  Don't bother with 930"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  15: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "My wife and I love Yamato! I lived in Japan for a few years, and we are both snobs for good food. These guys consistently have great food. The owners and staff are Japanese mostly. The environment/acoustics are nice. Try the yam and Liz rolls. They're cheap and delicious"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  16: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(2.8,
        "Yummy's has a lot of great food, but their sushi is rather sub-par.  Get something else."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  17: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "If you're a student like me, it's amazing pizza for a steal!  My wife and I always get an Extra large for \$15 and it's two meals in one."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  18: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "You can get more at Brick Oven down the street, but Slab has some delicious and ingenious pizzas!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  19: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(3.8,
        "Quantity over quality, baby."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  20: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "Red Robin's has some amazing burgers at a varied price range.  They're all good, but you get bang for your buck with any order.  Not to mention bottomless fries!"),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  21: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "I mean, you can't go wrong with their deals and dollar menu.  Great stuff for the price."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],
  22: [
    Review(5.0, "This is the best dish I've ever had"),
    Review(4.8,
        "Denny's is my favorite place!  I come here every year for my birthday and I can't get enough."),
    Review(3.2,
        "It tasted great, but it was lukewarm when they served it to me. Other than that, it would've been a great experience"),
    Review(4.5, "Perfectly breaded, and the rice was on point. Great dish!")
  ],

};

List<Review> getReviews(int dishId) {
  return dishReviews[dishId];
}

String getAddress(String restaurant) {
  return addressMap[restaurant];
}

void addReview(Review review, int dishId) {
  List<Review> reviews = getReviews(dishId);
  reviews.insert(0, review);
  dishReviews[dishId] = reviews;
}

class Review {
  double score;
  String review;

  Review(double score, String review) {
    this.score = score;
    this.review = review;
  }
}
