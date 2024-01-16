
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texnomart_clone_flutter/data/model/hive_model/product_holder.dart';
import 'package:texnomart_clone_flutter/data/source/local/my_hive_helper.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/provider/dashboard_provider.dart';
import 'package:texnomart_clone_flutter/ui/detail_screen.dart';
import 'package:texnomart_clone_flutter/ui/home_screen.dart';
import 'package:texnomart_clone_flutter/ui/products_screen.dart';
import 'package:texnomart_clone_flutter/ui/widgets/slider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
List<String> sliderImageList = [];
class _MainScreenState extends State<MainScreen> {
  final bloc = MainBloc();

  @override
  void initState() {
    bloc.add(MainInitialEvent());
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
      child: BlocConsumer<MainBloc, MainState>(
          builder: (context, state) {
            if(state.status == Status.Success) {
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 100,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15),),),
                backgroundColor: Colors.amberAccent,
                centerTitle: true, title: Column(
                children: [
                  Text('texnomart*', style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              )),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search_sharp, color: Colors.grey,),
                          SizedBox(width: 4,),
                          Text('Men sotib olmoqchiman', style: TextStyle(color: Colors.grey, fontSize: 16),),
                          Spacer(),
                          Icon(Icons.mic_rounded, color: Colors.grey,)
                        ],
                      ),
                    )
                  ),
                ],
              ),),
                body: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child:
                      Column(
                        children: [
                          const SizedBox(height: 15,),
                          ImageSliderDemo(imgList: sliderImageList),
                          const SizedBox(height: 15),
                          Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  itemCount: state.topCategoryModel?.data.data.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: (){
                                          Navigator.push(context, PageRouteBuilder(pageBuilder:  (context, animation, secondaryAnimation) =>
                                              ProductsScreen(state.topCategoryModel?.data.data[index].slug ?? "null", state.topCategoryModel?.data.data[index].title ?? "null")));
                                        },
                                        child: categorySelector(state.topCategoryModel?.data.data[index].title ?? "No Data"));
                                  }),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Kategoriyalar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const DashboardPage(currentPage: 1)));
                                  },
                                  child: const Row(children: [
                                    Text('barchasi', style: TextStyle(fontSize: 15),),
                                    Icon(Icons.arrow_forward_ios, size: 16,)
                                  ],),
                                )
                              ],),
                          ),
                          SizedBox(
                            height: 160,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  itemCount: state.specialCategoriesModel?.data.data.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return specialCategory(state.specialCategoriesModel?.data.data[index].image ?? "No Data", state.specialCategoriesModel?.data.data[index].title ?? "null", state.specialCategoriesModel?.data.data[index].slug ?? "null", context);
                                  }),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 8),
                            child: const Text('Yangi tovarlar'),),

                        ],
                      ),
                    ),

                    SliverGrid.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15.0,
                            crossAxisSpacing: 15.0,
                            mainAxisExtent: 300.0
                        ),
                        itemCount: state.topProductsModel?.data.data.length,
                        itemBuilder: (context, index) {
                          return topProducts(ProductHolder(
                              state.topProductsModel?.data.data[index].id,
                              state.topProductsModel?.data.data[index].name,
                              state.topProductsModel?.data.data[index].image,
                              state.topProductsModel?.data.data[index].saleMonths,
                              state.topProductsModel?.data.data[index].stickers,
                              state.topProductsModel?.data.data[index].availability,
                              0,
                              '',
                              [],
                              state.topProductsModel?.data.data[index].salePrice,
                              '',
                              state.topProductsModel?.data.data[index].oldPrice,
                              '',
                              0,
                              '',
                              state.topProductsModel?.data.data[index].axiomMonthlyPrice,
                              state.topProductsModel?.data.data[index].reviewsCount,
                              state.topProductsModel?.data.data[index].reviewsAverage,
                              state.topProductsModel?.data.data[index].allCount,
                              null,
                              false,
                              0), context, () {
                            setState(() {
                              bool isSaved =
                              HiveHelper.getAllKeysProductsFromFavourite().contains(state.topProductsModel?.data.data[index].id);
                              final productHolder = ProductHolder(
                                  state.topProductsModel?.data.data[index].id,
                                  state.topProductsModel?.data.data[index].name,
                                  state.topProductsModel?.data.data[index].image,
                                  state.topProductsModel?.data.data[index].saleMonths,
                                  state.topProductsModel?.data.data[index].stickers,
                                  state.topProductsModel?.data.data[index].availability,
                                  0,
                                  '',
                                  [],
                                  state.topProductsModel?.data.data[index].salePrice,
                                  '',
                                  state.topProductsModel?.data.data[index].oldPrice,
                                  '',
                                  0,
                                  '',
                                  state.topProductsModel?.data.data[index].axiomMonthlyPrice,
                                  state.topProductsModel?.data.data[index].reviewsCount,
                                  state.topProductsModel?.data.data[index].reviewsAverage,
                                  state.topProductsModel?.data.data[index].allCount,
                                  null,
                                  false,
                                  0);

                              productHolder.isSaved = !productHolder.isSaved!;
                              isSaved  == true
                                  ? HiveHelper.deleteProductFromFavourite(productHolder)
                                  : HiveHelper.addProductToFavourite(productHolder);
                            });
                          });
                        }),
                    // SliverToBoxAdapter(child:
                    // SliverGrid.builder(
                    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //         crossAxisCount: 2,
                    //         mainAxisSpacing: 15.0,
                    //         crossAxisSpacing: 15.0,
                    //         mainAxisExtent: 300.0
                    //     ),
                    //     itemCount: state.topProductsModel?.data?.data?.length,
                    //     itemBuilder: (context, index) {
                    //       return topProducts(state.topProductsModel?.data.data![index]);
                    //     })
                    //   ,)
                  ],
                )


            );
            }else
              if(state.status == Status.Loading) {
              return  Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 100,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15),),),
                    backgroundColor: Colors.amberAccent,
                    centerTitle: true, title: Column(
                    children: [
                      Text('texnomart*', style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      )),
                      Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                          margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.search_sharp, color: Colors.grey,),
                                SizedBox(width: 4,),
                                Text('Men sotib olmoqchiman', style: TextStyle(color: Colors.grey, fontSize: 16),),
                                Spacer(),
                                Icon(Icons.mic_rounded, color: Colors.grey,)
                              ],
                            ),
                          )
                      ),
                    ],
                  ),),
                  body: const Center(child: CircularProgressIndicator()));
            }else { return
                Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 100,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15),),),
                    backgroundColor: Colors.amberAccent,
                    centerTitle: true, title: Column(
                    children: [
                      Text('texnomart*', style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      )),
                      Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                          margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.search_sharp, color: Colors.grey,),
                                SizedBox(width: 4,),
                                Text('Men sotib olmoqchiman', style: TextStyle(color: Colors.grey, fontSize: 16),),
                                Spacer(),
                                Icon(Icons.mic_rounded, color: Colors.grey,)
                              ],
                            ),
                          )
                      ),
                    ],
                  ),),
                  body: const Center(
                  child: Icon(Icons.network_check_sharp, color: Colors.grey, size: 56,),),
                );
            }
          },
          listener: (context, state) {
            context.read<DashboardProvider>().getBasketCount();

            sliderImageList = state.slidersModel?.data.data
                ?.map((i) => i.imageMobileWeb ?? "")
                .toList() ??
                [];

          }),
    );
  }
}


Widget categorySelector(String category) {
  return FittedBox(
    child: Container(
     margin: const EdgeInsets.only(right: 5),
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: BorderRadius.all(Radius.circular(24)),
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

Widget specialCategory(String category, String title, String slug, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, PageRouteBuilder(pageBuilder:  (context, animation, secondaryAnimation) =>
          ProductsScreen(slug, title)));
    },
    child: Container(
      width: 100,
      alignment: Alignment.center,
      child: Column(
        children: [
          Card(
            child: Center(
              child: SizedBox(
                height: 100,
                child: SvgPicture.network(category),
              ),
            ),
          ),

          Center(
            child: Text(title, maxLines: 2,  style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,)
            ,
          )
        ],
      ),
    ),
  );
}

Widget topProducts(ProductHolder productHolder, BuildContext context, void Function() onFavouriteClick) {
  bool isSaved =
  HiveHelper.getAllKeysProductsFromFavourite().contains(productHolder.id);
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                DetailScreen(item: productHolder)
          )
      );
    },
    child: Container(
      height: 300,
      alignment: Alignment.center,
      child:Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: onFavouriteClick,
              child: Card(
                child:
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(isSaved ? Icons.favorite : Icons.favorite_border_outlined),
                ),
              ),
            ),
          ),
          SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.network(productHolder.image ?? "null", loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },),
              )),
          Text(productHolder.name ?? "No data", style: const TextStyle(), maxLines: 2, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),

          Container(
            margin: const EdgeInsets.only(top: 4),
            alignment: Alignment.topLeft,
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(productHolder.axiomMonthlyPrice ?? "No data"),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text('${productHolder.salePrice.toString()} so`m')),
          )
        ],
      )
    ),
  );
}