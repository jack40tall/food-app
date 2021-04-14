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
    Review(4.8,
        "By far one of the tastiest Katsu dishes I've had outside of Japan"),
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
