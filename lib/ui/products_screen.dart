
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texnomart_clone_flutter/data/model/hive_model/product_holder.dart';
import 'package:texnomart_clone_flutter/data/model/producs_popular_category/products_popular_category.dart';
import 'package:texnomart_clone_flutter/data/model/top_products/top_products_model.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/products/product_bloc.dart';
import 'package:texnomart_clone_flutter/ui/detail_screen.dart';

class ProductsScreen extends StatefulWidget {
  final String category;
  final String categoryName;
  const ProductsScreen(this.category, this.categoryName,  {super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final bloc = ProductBloc();

  @override
  void initState() {
    print('category ${widget.category}');
    bloc.add(ProductInitialEvent(widget.category));
    print(bloc.state.productsItemModel);
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: bloc,
      child: BlocConsumer<ProductBloc, ProductState>(builder: (context, state) {
        if(state.status == Status.Loading) {
          return Scaffold(
              appBar: AppBar(backgroundColor: Colors.amberAccent, title: Text(widget.categoryName),),
              body: Center(child: CircularProgressIndicator(),));
        }else{
          return
            Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(backgroundColor: Colors.amberAccent, title: Text(widget.categoryName),),
              body: Column(
               children: [
                 Container(
                   height: 60,
                   margin: EdgeInsets.symmetric(vertical: 8),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListView.builder(
                         itemCount: state.productsItemModel?.data?.popularCategories?.length,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index) {
                           return InkWell(
                               onTap: (){
                                 bloc.add(ProductInitialEvent(state.productsItemModel?.data?.popularCategories?[index].slug ?? "No Data"));
                               },
                               child: categorySelector(state.productsItemModel?.data?.popularCategories?[index].name ?? "No Data"));
                         }),
                   ),
                 ),
                 Flexible(
                   child: GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       mainAxisSpacing: 15.0,
                       crossAxisSpacing: 15.0,
                       mainAxisExtent: 300.0
                   ),
                   itemCount: state.productsItemModel?.data?.interestingProducts?.length,
                   itemBuilder: (context, index) {
                     return topProducts(state.productsItemModel?.data.interestingProducts![index], context);
                   }),
                 )

        ]
              ),
            );
        }
      }, listener: (context, state) {

        print(state.productsItemModel?.success);

      }),
    );

  }
}

Widget categorySelector(String category) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.only(right: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text(
          category,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}


Widget topProducts(TopProductsItem? topProductsItem, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DetailScreen(item: ProductHolder(
                      topProductsItem?.id,
                      topProductsItem?.name,
                      topProductsItem?.image,
                      topProductsItem?.saleMonths,
                      topProductsItem?.stickers,
                      topProductsItem?.availability,
                      0,
                      '',
                      [],
                      topProductsItem?.salePrice,
                      '',
                      topProductsItem?.oldPrice,
                      '',
                      0,
                      '',
                      topProductsItem?.axiomMonthlyPrice,
                      topProductsItem?.reviewsCount,
                      topProductsItem?.reviewsAverage,
                      topProductsItem?.allCount,
                      null,
                      false,
                      0),)
          )
      );
    },
    child: Container(
        height: 300,
        alignment: Alignment.center,
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.topRight,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.favorite_border_outlined),
                ),
              ),
            ),
            Container(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(topProductsItem?.image ?? "null"),
                )),
            Text(topProductsItem?.name ?? "No data", style: TextStyle(), maxLines: 2, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),

            Container(
              margin: EdgeInsets.only(top: 4),
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(topProductsItem?.axiomMonthlyPrice ?? "No data"),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('${topProductsItem?.salePrice.toString()} so`m')),
            )
          ],
        )
    ),
  );
}