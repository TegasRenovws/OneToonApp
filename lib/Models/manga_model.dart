import 'activities.dart';

class Destination {
  String imageUrl;
  String title;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.title,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'assets/images/Ore no Iinazuke ni Natta Jimiko, Ie de wa Kawaii Shika Nai!.jpg',
    title: 'Ore no Iinazuke ni Natta Jimiko, Ie de wa Kawaii Shika Nai!',
    country: 'Manga',
    description: 'Ore no Iinazuke ni Natta Jimiko, Ie de wa Kawaii Shika Nai!',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'assets/images/Kanojo ga Senpai ni NTR-reta no de, Senpai no Kanojo wo NTR-masu.jpg',
    title: 'Kanojo ga Senpai ni NTR-reta no de, Senpai no Kanojo wo NTR-masu',
    country: 'France',
    description: 'Yuu Ishiki, mahasiswa tahun pertama,',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Osananajimi.jpg',
    title: 'Osananajimi(♂) wo Onnanoko ni Shiteshimatta Hanashi',
    country: 'India',
    description: 'Seorang cowok populer yang gemar kosmetik ',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/LustGeas.jpg',
    title: 'Lust Geas',
    country: 'Brazil',
    description:
        'Pada hari Ulang Tahun Rikka si Pecinta Supranatural, Souta memberikannya buku Sihir yang kebetulan ia temukan di Toko Buku Tua.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Amagami.jpg',
    title: 'Amagami-san Chi no Enmusubi',
    country: 'United States',
    description:
        'Uryuu-kun menumpang untuk menginap di kuil. Namun dia tidak menyangka kalau kuil tersebut ',
    activities: activities,
  ),
];
