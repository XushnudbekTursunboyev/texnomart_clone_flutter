

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart_clone_flutter/data/model/category/all_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/producs_popular_category/products_popular_category.dart';
import 'package:texnomart_clone_flutter/data/model/slider/sliders_model.dart';
import 'package:texnomart_clone_flutter/data/model/special_category/special_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/stores/stores_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_category/top_category_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_products/top_products_model.dart';

import '../../model/product_detail/product_detail_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('https://gateway.texnomart.uz/api/web/v1/category/catalog')
  Future<AllCategoriesModel> getAllCategories({@Query('slug') String slug = ''});

  @GET('https://gateway.texnomart.uz/api/web/v1/content/sliders')
  Future<SlidersModel> getSliders();

  @GET('https://gateway.texnomart.uz/api/web/v1/header/top-categories')
  Future<TopCategoryModel> getTopCategories();

  @GET('https://gateway.texnomart.uz/api/web/v1/home/special-categories')
  Future<SpecialCategoriesModel> getSpecialCategories();

  @GET('https://gateway.texnomart.uz/api/web/v1/home/special-products?type=hit_products')
  Future<TopProductsModel> getTopProducts();

  @GET('https://gateway.texnomart.uz/api/web/v1/category/popular-categories')
  Future<ProductsPopularCategory> getProductByCatalog({@Query('slug') String slug= 'smartfony'});

  @GET('https://gateway.texnomart.uz/api/web/v1/product/detail')
  Future<ProductDetailModel> getProductDetailById(@Query('id') int id);

  @GET('https://gateway.texnomart.uz/api/web/v1/region/stores-list')
  Future<StoresModel> getStoresModel();
}