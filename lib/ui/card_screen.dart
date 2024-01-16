// import 'package:flutter/material.dart';
// import 'package:texnomart_clone_flutter/data/model/product_detail/product_detail_model.dart';
//
// class CardScreen extends StatefulWidget {
//   const CardScreen({super.key});
//
//   @override
//   State<CardScreen> createState() => _CardScreenState();
// }
//
// class _CardScreenState extends State<CardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amberAccent,
//         title: Text('Svatcha'),
//       ),
//       body: ListView.builder(
//           itemCount: 3,
//           itemBuilder: (context, index) {
//         return cartItem(null);
//       }),
//     );
//   }
// }
//
//
// Widget cartItem(ProductDetailData? productDetailData) {
//   return FittedBox(
//     child: Container(
//       height: 300,
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             Image.network(productDetailData?.smallImages?[0] ?? "null"),
//             Column(
//               children: [
//                 Text(productDetailData?.name ?? "null", overflow: TextOverflow.ellipsis, maxLines: 2),
//                 Text('${productDetailData?.salePrice} ', style: TextStyle(fontWeight: FontWeight.w800),),
//                 Container(
//                   height: 30,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.grey,
//                   ),
//                   child: Center(child: Text('${productDetailData?.monthlyPrice}', style: TextStyle(fontSize: 14),)),
//                 ),
//
//                 Container(
//                   height: 30,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(width: 1, color: Colors.grey)
//                   ),
//
//                   child: Row(
//                     children: [
//                       IconButton(onPressed: (){}, icon: Icon(Icons.add), color: Colors.black,),
//                       Spacer(),
//                       Text('1'),
//                       Spacer(),
//                       IconButton(onPressed: (){}, icon: Icon(Icons.add), color: Colors.black,),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.black,),
//             IconButton(onPressed: (){}, icon: Icon(Icons.delete), color: Colors.black,),
//           ],
//         )
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texnomart_clone_flutter/data/source/local/my_hive_helper.dart';
import 'package:texnomart_clone_flutter/presenter/card/card_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/card/card_event.dart';
import 'package:texnomart_clone_flutter/presenter/card/card_state.dart';
import 'package:texnomart_clone_flutter/presenter/provider/dashboard_provider.dart';
import 'package:texnomart_clone_flutter/ui/detail_screen.dart';
import 'package:texnomart_clone_flutter/ui/home_screen.dart';
import 'package:texnomart_clone_flutter/ui/widgets/basket.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final _bloc = CardBloc();

  // List<ProductHolder> data = [];

  @override
  void initState() {
    _bloc.add(GetAllProductsFromCardEvent());
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<CardBloc, CardState>(
        listener: (context, state) {
          if (state is GetAllProductsFromCardSate) {
            //   state.data.forEach((element) {
            //     data.add(ProductHolder(
            //         element.id,
            //         element.name,
            //         element.image,
            //         element.saleMonths,
            //         element.stickers,
            //         element.availability,
            //         0,
            //         '',
            //         [],
            //         element.salePrice,
            //         '',
            //         element.oldPrice,
            //         '',
            //         0,
            //         '',
            //         element.axiomMonthlyPrice,
            //         element.reviewsCount,
            //         element.reviewsAverage,
            //         element.allCount,
            //         null,
            //         element.isSaved,
            //         element.count));
            //   });
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFfbc100),
              title: Text('Savatcha',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 14)),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Builder(builder: (context) {
                  if (state is GetAllProductsFromCardSate) {
                    return

                      ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        if (state.data[index].count == 0) {
                          // setState(() {
                          state.data[index].count = 1;
                          // });
                        }
                        bool isSaved =
                        HiveHelper.getAllKeysProductsFromFavourite()
                            .contains(state.data[index].id);
                        // setState(() {
                        state.data[index].isSaved = isSaved;
                        // });

                        return basketItem(
                                () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => DetailScreen(
                              //             item: state.data[index])));
                            },
                            context,
                            state.data[index],
                                () {
                              setState(() {
                                state.data[index].isSaved =
                                !state.data[index].isSaved!;
                                isSaved == true
                                    ? HiveHelper.deleteProductFromFavourite(
                                    state.data[index])
                                    : HiveHelper.addProductToFavourite(
                                    state.data[index]);

                              });
                            },
                                () {
                                  context.read<DashboardProvider>().decrement();
                              HiveHelper.deleteProductFromBasket(
                                  state.data[index]);
                              _bloc.add(GetAllProductsFromCardEvent());

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //         const DashboardPage(currentPage: 2)));
                            },
                                () {
                              setState(() {
                                if(state.data[index].count! < 10) {
                                  state.data[index].count =
                                      (state.data[index].count ?? 0) + 1;
                                  HiveHelper.updateProductInBasket(
                                      state.data[index]);
                                }

                              });
                            },
                                () {
                              setState(() {
                                state.data[index].count =
                                    (state.data[index].count ?? 0) - 1;
                                HiveHelper.updateProductInBasket(
                                    state.data[index]);
                              });
                            });
                      },
                    );

                  } else {
                    return Scaffold(
                      body: SafeArea(
                        child: Center(
                          child: CircularProgressIndicator()
                        ),
                      ),
                    );
                  }
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
