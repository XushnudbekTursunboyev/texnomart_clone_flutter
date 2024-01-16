import 'package:hive/hive.dart';import 'package:texnomart_clone_flutter/data/model/products/products_model.dart';@HiveType(typeId: 0)class ProductHolder {  @HiveField(0)  int? id;  @HiveField(1)  String? name;  @HiveField(2)  String? image;  @HiveField(3)  dynamic saleMonths;  @HiveField(4)  List<dynamic>? stickers;  @HiveField(5)  String? availability;  @HiveField(6)  int? discount;  @HiveField(7)  String? code;  @HiveField(8)  List<MainCharacters>? mainCharacters;  @HiveField(9)  int? salePrice;  @HiveField(10)  String? fSalePrice;  @HiveField(11)  dynamic oldPrice;  @HiveField(12)  dynamic fOldPrice;  @HiveField(13)  double? loanPrice;  @HiveField(14)  String? fLoanPrice;  @HiveField(15)  String? axiomMonthlyPrice;  @HiveField(16)  int? reviewsCount;  @HiveField(17)  dynamic reviewsAverage;  @HiveField(18)  int? allCount;  @HiveField(19)  Brand? brand;  @HiveField(20)  bool? isSaved;  @HiveField(21)  int? count;  ProductHolder(    this.id,    this.name,    this.image,    this.saleMonths,    this.stickers,    this.availability,    this.discount,    this.code,    this.mainCharacters,    this.salePrice,    this.fSalePrice,    this.oldPrice,    this.fOldPrice,    this.loanPrice,    this.fLoanPrice,    this.axiomMonthlyPrice,    this.reviewsCount,    this.reviewsAverage,    this.allCount,    this.brand,    this.isSaved,    this.count,  );  Map<String, dynamic> toJson() {    return {      'id': id,      'name': name,      'image': image,      'saleMonths': saleMonths,      'stickers': stickers,      'availability': availability,      'discount': discount,      'code': code,      'mainCharacters': mainCharacters?.map((e) => e.toJson()).toList(),      'salePrice': salePrice,      'fSalePrice': fSalePrice,      'oldPrice': oldPrice,      'fOldPrice': fOldPrice,      'loanPrice': loanPrice,      'fLoanPrice': fLoanPrice,      'axiomMonthlyPrice': axiomMonthlyPrice,      'reviewsCount': reviewsCount,      'reviewsAverage': reviewsAverage,      'allCount': allCount,      'brand': brand?.toJson(),      'isSaved': isSaved,      'itemCount': count,    };  }  factory ProductHolder.fromJson(Map<String, dynamic> json) {    return ProductHolder(        json['id'],        json['name'],        json['image'],        json['saleMonths'],        json['stickers'],        json['availability'],        json['discount'],        json['code'],        (json['mainCharacters'] as List<dynamic>?)            ?.map((e) => MainCharacters.fromJson(e))            .toList(),        json['salePrice'],        json['fSalePrice'],        json['oldPrice'],        json['fOldPrice'],        json['loanPrice'],        json['fLoanPrice'],        json['axiomMonthlyPrice'],        json['reviewsCount'],        json['reviewsAverage'],        json['allCount'],        json['brand'] != null ? Brand.fromJson(json['brand']) : null,        json['isSaved'],        json['itemCount']);  }}