// import 'package:equatable/equatable.dart';
//
// class BookModel extends Equatable {
//   // final String? kind;
//   final String? id;
//   // final String? etag;
//   final String? selfLink;
//   final String? publisher;
//   // final String? publishedDate;
//   final String? description;
//   // final String? printType;
//   // final String? maturityRating;
//   final String? language;
//   final String? previewLink;
//   // final Map? volumeInfo;
//   // final List? industryIdentifiers;
//   // final Map? readingModes;
//   final List? categories;
//   final int? averageRating;
//   final int? ratingsCount;
//   final Map<dynamic, dynamic>? imageLinks;
//   // final Map? saleInfo;
//   // final Map? accessInfo;
//   // final Map? searchInfo;
//
//   const BookModel({
//     // required this.kind,
//     required this.id,
//     // required this.etag,
//     required this.selfLink,
//     // required this.volumeInfo,
//     required this.publisher,
//     // required this.publishedDate,
//     required this.description,
//     // required this.industryIdentifiers,
//     // required this.readingModes,
//     // required this.pageCount,
//     // required this.printType,
//     required this.categories,
//     required this.averageRating,
//     required this.ratingsCount,
//     // required this.maturityRating,
//     required this.imageLinks,
//     required this.language,
//     required this.previewLink,
//     // required this.saleInfo,
//     // required this.accessInfo,
//     // required this.searchInfo,
//   });
//
//   factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
//         id: json['id'],
//         // etag: json['etag'],
//         selfLink: json['selfLink'],
//         // volumeInfo: json['volumeInfo'],
//         publisher: json['publisher'],
//         // publishedDate: json['publishedDate'],
//         description: json['description'],
//         // industryIdentifiers: json['industryIdentifiers'],
//         // readingModes: json['readingModes'],
//         // pageCount: json['pageCount'],
//         // printType: json['printType'],
//         categories: json['categories'],
//         averageRating: json['averageRating'],
//         ratingsCount: json['ratingsCount'],
//         // maturityRating: json['maturityRating'],
//         imageLinks: json['imageLinks'],
//         language: json['language'],
//         // saleInfo: json['saleInfo'],
//         // accessInfo: json['accessInfo'],
//         // searchInfo: json['searchInfo'],
//         previewLink: json['previewLink'],
//       );
//
//   // saleInfoToDart(Map<String, dynamic> saleInfo) {
//   //   return this.saleInfo;
//   // }
//
//   @override
//   List<Object> get props => [
//         // kind!,
//         id!,
//         // etag!,
//         selfLink!,
//         // volumeInfo!,
//         publisher!,
//         // publishedDate!,
//         description!,
//         // industryIdentifiers!,
//         // readingModes!,
//         // printType!,
//         categories!,
//         averageRating!,
//         ratingsCount!,
//         // maturityRating!,
//         imageLinks!,
//         language!,
//         previewLink!,
//         // saleInfo!,
//         // accessInfo!,
//         // searchInfo!,
//       ];
// }
//
// class ImageLinks  {
//   const ImageLinks({
//     required this.smallThumbnail,
//     required this.thumbnail,
//   });
//
//   final String smallThumbnail;
//
//   final String thumbnail;
//
//   factory ImageLinks.fromJson(Map<dynamic, dynamic> json) {
//     return ImageLinks(
//       smallThumbnail: json['smallThumbnail'],
//       thumbnail: json['thumbnail'],
//     );
//   }
// }

import 'package:equatable/equatable.dart';

import 'book_model_test/access_info.dart';
import 'book_model_test/image_links.dart';
import 'book_model_test/sale_info.dart';
import 'book_model_test/search_info.dart';
import 'book_model_test/volume_info.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final ImageLinks? imageLinks;
  final SearchInfo? searchInfo;

  const BookModel({
    this.imageLinks,
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo:
            VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
        'imageLinks': imageLinks?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
      searchInfo,
      imageLinks,
    ];
  }
}
