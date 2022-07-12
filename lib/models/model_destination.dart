import 'package:equatable/equatable.dart';

class ModelDestination extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;
  final String description;
  final String popularImg1;
  final String popularImg2;
  final String popularImg3;
  final String popularName1;
  final String popularName2;
  final String popularName3;

  const ModelDestination({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
    this.description = '',
    this.popularImg1 = '',
    this.popularImg2 = '',
    this.popularImg3 = '',
    this.popularName1 = '',
    this.popularName2 = '',
    this.popularName3 = '',
  });

  factory ModelDestination.fromJson(String id, Map<String, dynamic> json) =>
      ModelDestination(
        id: id,
        name: json['name'] ?? '',
        city: json['city'] ?? '',
        imageUrl: json['imageUrl'] ?? '',
        rating: json['rating'],
        price: json['price'],
        description: json['description'] ?? '',
        popularImg1: json['popularPlace1'] ?? '',
        popularImg2: json['popularPlace2'] ?? '',
        popularImg3: json['popularPlace3'] ?? '',
        popularName1: json['popularPlaceName1'] ?? '',
        popularName2: json['popularPlaceName2'] ?? '',
        popularName3: json['popularPlaceName3'] ?? '',
      );

  @override
  List<Object?> get props => [
        id,
        name,
        city,
        imageUrl,
        rating,
        price,
        description,
        popularImg1,
        popularImg2,
        popularImg3,
        popularName1,
        popularName2,
        popularName3,
      ];
}
