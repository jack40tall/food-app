List<Dish> dishes = [
  Dish(
      name: 'Katsu Curry',
      restaurant: "Ks Kitchen",
      hoursOpen: '12am - 10pm',
      rating: 5.0,
      distance: 10.1,
      imagePath: 'dish_images/ks_katsu.jpeg'),
  Dish(
      name: 'Gyoza',
      restaurant: "Ks Kitchen",
      hoursOpen: '12am - 10pm',
      rating: 4.5,
      distance: 10.1,
      imagePath: 'dish_images/ks_gyoza.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Yamato',
      hoursOpen: '8am - 10pm',
      rating: 4.5,
      distance: 4.1,
      imagePath: 'dish_images/yamato_katsu.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'JINYA',
      hoursOpen: '8am - 12pm',
      rating: 4.2,
      distance: 8.2,
      imagePath: 'dish_images/jinya_katsu.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 4.0,
      distance: 20.5,
      imagePath: 'dish_images/asa_katsu.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Sushi-ya',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/sushiya_katsu.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'JINYA',
      hoursOpen: '8am - 12pm',
      rating: 4.2,
      distance: 8.2,
      imagePath: 'dish_images/jinya_katsu.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 4.0,
      distance: 20.5,
      imagePath: 'dish_images/asa_katsu.jpeg'),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Sushi-ya',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/sushiya_katsu.jpeg'),
];

class Dish {
  final String name;
  final String restaurant;
  final String hoursOpen;
  final double rating;
  final double distance;
  final String imagePath;

  const Dish(
      {this.name,
      this.restaurant,
      this.hoursOpen,
      this.rating,
      this.distance,
      this.imagePath});
}

List<Dish> getDishData() {
  return dishes;
}
