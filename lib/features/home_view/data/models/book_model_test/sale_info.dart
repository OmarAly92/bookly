import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final ListPrice? listPrice;
  final String? country;
  final String? saleability;
  final bool? isEbook;

  const SaleInfo(
      {this.listPrice, this.country, this.saleability, this.isEbook});

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        isEbook: json['isEbook'] as bool?,
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
      };

  @override
  List<Object?> get props => [country, saleability, isEbook];
}

class ListPrice extends Equatable {
  final num? amount;
  final String? currencyCode;

  // "listPrice": {
  // "amount": 4248.5,
  // "currencyCode": "EGP"
  // },

  const ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) => ListPrice(
        amount: json['amount'] as num,
        currencyCode: json['currencyCode'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };

  @override
  List<Object> get props => [amount!, currencyCode!];
}
