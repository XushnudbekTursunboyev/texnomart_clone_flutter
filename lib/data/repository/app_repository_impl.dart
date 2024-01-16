

import 'package:texnomart_clone_flutter/data/model/category/all_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/producs_popular_category/products_popular_category.dart';
import 'package:texnomart_clone_flutter/data/model/product_detail/product_detail_model.dart';
import 'package:texnomart_clone_flutter/data/model/products/products_model.dart';
import 'package:texnomart_clone_flutter/data/model/slider/sliders_model.dart';
import 'package:texnomart_clone_flutter/data/model/special_category/special_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_category/top_category_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_products/top_products_model.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/data/source/network/api_client.dart';
import 'package:texnomart_clone_flutter/di/di.dart';

class AppRepositoryImpl extends AppRepository{
  final api = getIt<ApiClient>();

  @override
  Future<AllCategoriesModel> getAllCategories() async{
    final response = await api.getAllCategories();
    return response;
  }

  @override
  Future<SlidersModel> getSliders() async{
    final response = await api.getSliders();
    return response;
  }

  @override
  Future<TopCategoryModel> getTopCategories() async{
    final response = await api.getTopCategories();
    return response;
  }

  @override
  Future<SpecialCategoriesModel> getSpecialCategories() async{
    final response = await api.getSpecialCategories();
    return response;
  }

  @override
  Future<TopProductsModel> getTopProducts() async{
    final response = await api.getTopProducts();
    return response;
  }

  @override
  Future<ProductsPopularCategory> getProducts(String slug) async{
    final response = await api.getProductByCatalog(slug: slug);
    return response;
  }

  @override
  Future<ProductDetailModel> getProductDetailByID(int id) async{
    final response = await api.getProductDetailById(id);
    return response;
  }

}