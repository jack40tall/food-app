List<Dish> dishes = [
  Dish(
      name: 'Katsu Curry',
      restaurant: "Ks Kitchen",
      hoursOpen: '12am - 10pm',
      rating: 5.0,
      distance: 10.1,
      imagePath: 'dish_images/ks_katsu.jpeg',
      address: "My Address"),
  Dish(
      name: 'Gyoza',
      restaurant: "Ks Kitchen",
      hoursOpen: '12am - 10pm',
      rating: 4.5,
      distance: 10.1,
      imagePath: 'dish_images/ks_gyoza.jpeg',
      address: "My Address"),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Yamato',
      hoursOpen: '8am - 10pm',
      rating: 4.5,
      distance: 4.1,
      imagePath: 'dish_images/yamato_katsu.jpeg',
      address: "My Address"),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'JINYA',
      hoursOpen: '8am - 12pm',
      rating: 4.2,
      distance: 8.2,
      imagePath: 'dish_images/jinya_katsu.jpeg',
      address: "My Address"),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 4.0,
      distance: 20.5,
      imagePath: 'dish_images/asa_katsu.jpeg',
      address: "My Address"),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Sushi-ya',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/sushiya_katsu.jpeg',
      address: "My Address"),
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
      imagePath: 'dish_images/asa_katsu.jpeg',
      address: "My Address"),
  Dish(
      name: 'Katsu Curry',
      restaurant: 'Sushi-ya',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/sushiya_katsu.jpeg',
      address: "My Address"),
  Dish(
      name: 'Ramen',
      restaurant: 'Asa Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/asa_ramen.jpg',
      address: "My Address"),
  Dish(
      name: 'Gyoza',
      restaurant: 'Five Sushi Brothers',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/fivesushibros_gyoza.jpg',
      address: "My Address"),
  Dish(
      name: 'Sushi',
      restaurant: 'Five Sushi Brothers',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/fivesushibros_sushi.jpg',
      address: "My Address"),
  Dish(
      name: 'Sushi',
      restaurant: 'Happy Sumo',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/happysumo_sushi.jpg',
      address: "My Address"),
  Dish(
      name: 'Ramen',
      restaurant: 'Koi Ramen',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/koi_ramen.jpg',
      address: "My Address"),
  Dish(
      name: 'Ramen',
      restaurant: 'Ramen 930',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/ramen930_ramen.jpg',
      address: "My Address"),
  Dish(
      name: 'Gyoza',
      restaurant: 'Yamato',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/yamato_gyoza.jpeg',
      address: "My Address"),
  Dish(
      name: 'Sushi',
      restaurant: 'Yummy\'s',
      hoursOpen: '4pm - 10pm',
      rating: 3.6,
      distance: 7.5,
      imagePath: 'dish_images/yummys_sushi.jpg',
      address: "My Address"),
];

class Dish {
  final String name;
  final String restaurant;
  final String hoursOpen;
  final double rating;
  final double distance;
  final String imagePath;
  final String address;

  const Dish(
      {this.name,
      this.restaurant,
      this.hoursOpen,
      this.rating,
      this.distance,
      this.imagePath,
      this.address});
}

List<Dish> getDishData() {
  return dishes;
}
