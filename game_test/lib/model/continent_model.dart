import 'package:game_test/model/suroo_model.dart';

class ContinentsModel {
  const ContinentsModel({
    required this.title,
    required this.image,
    this.suroolor,
  });

  final String title;
  final String image;
  final List<Suroo>? suroolor;
}

List<ContinentsModel> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];

const europe = ContinentsModel(
  image: 'europe',
  title: 'Europe',
);
final asia = ContinentsModel(
  image: 'asia',
  title: 'Asia',
  suroolor: asiaSurooloru,
);
const northAmerica = ContinentsModel(
  image: 'north_america',
  title: 'North America',
);
const southAmerica = ContinentsModel(
  image: 'south_america',
  title: 'South America',
);
const africa = ContinentsModel(
  image: 'africa',
  title: 'Africa',
);
const australia = ContinentsModel(
  image: 'australia',
  title: 'Australia',
);
