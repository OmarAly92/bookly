import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final Map<String, dynamic> volumeInfo;
  final String publisher;
  final String publishedDate;
  final String description;
  final List<Map<String, dynamic>> industryIdentifiers;
  final Map<String, dynamic> readingModes;

  // final int pageCount;
  final String printType;
  final List<String> categories;
  final int averageRating;
  final int ratingsCount;
  final String maturityRating;
  final Map<String, dynamic> imageLinks;
  final String language;
  final String previewLink;
  final Map<String, dynamic> saleInfo;
  final Map<String, dynamic> accessInfo;
  final Map<String, dynamic> searchInfo;

  const BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    // required this.pageCount,
    required this.printType,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
    required this.maturityRating,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'],
        id: json['id'],
        etag: json['etag'],
        selfLink: json['selfLink'],
        volumeInfo: json['volumeInfo'],
        publisher: json['publisher'],
        publishedDate: json['publishedDate'],
        description: json['description'],
        industryIdentifiers: json['industryIdentifiers'],
        readingModes: json['readingModes'],
        // pageCount: json['pageCount'],
        printType: json['printType'],
        categories: json['categories'],
        averageRating: json['averageRating'],
        ratingsCount: json['ratingsCount'],
        maturityRating: json['maturityRating'],
        imageLinks: json['imageLinks'],
        language: json['language'],
        saleInfo: json['saleInfo'],
        accessInfo: json['accessInfo'],
        searchInfo: json['searchInfo'],
        previewLink: json['previewLink'],
      );

  saleInfoToDart(Map<String, dynamic> saleInfo) {
    return this.saleInfo;
  }

  @override
  List<Object> get props => [
        kind,
        id,
        etag,
        selfLink,
        volumeInfo,
        publisher,
        publishedDate,
        description,
        industryIdentifiers,
        readingModes,
        printType,
        categories,
        averageRating,
        ratingsCount,
        maturityRating,
        imageLinks,
        language,
        previewLink,
        saleInfo,
        accessInfo,
        searchInfo,
      ];
}
