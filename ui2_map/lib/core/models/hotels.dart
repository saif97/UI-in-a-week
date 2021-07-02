final List<Hotel> listHotels = [
  Hotel(
    name: 'Templar Hotel',
    distance: 3,
    location: 'Las Vegas, Nevada',
    rating: 4,
    price: 170,
    reviews: 402,
    src: 'assets/h1.jpg',
  ),
  Hotel(
    name: 'Snowden Hotel',
    distance: 2,
    location: 'Las Vegas, Nevada',
    rating: 4,
    price: 180,
    reviews: 80,
    src: 'assets/h2.jpg',
  ),
];

class Hotel {
  String name;
  String src;
  double price;
  String location;
  double distance;
  int reviews;
  double rating;
  Hotel({
    required this.name,
    required this.src,
    required this.price,
    required this.location,
    required this.distance,
    required this.reviews,
    required this.rating,
  });
}
