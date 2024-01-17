

import 'package:texnomart_clone_flutter/data/model/category/all_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/producs_popular_category/products_popular_category.dart';
import 'package:texnomart_clone_flutter/data/model/product_detail/product_detail_model.dart';
import 'package:texnomart_clone_flutter/data/model/products/products_model.dart';
import 'package:texnomart_clone_flutter/data/model/slider/sliders_model.dart';
import 'package:texnomart_clone_flutter/data/model/special_category/special_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/stores/stores_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_category/top_category_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_products/top_products_model.dart';

abstract class AppRepository{
  Future<AllCategoriesModel> getAllCategories();
  Future<SlidersModel> getSliders();
  Future<TopCategoryModel> getTopCategories();
  Future<SpecialCategoriesModel> getSpecialCategories();
  Future<TopProductsModel> getTopProducts();
  Future<ProductsPopularCategory> getProducts(String slug);
  Future<ProductDetailModel> getProductDetailByID(int id);
  Future<StoresModel> getStores();

}