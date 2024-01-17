
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texnomart_clone_flutter/presenter/product_detail/detail_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/provider/dashboard_provider.dart';
import 'package:texnomart_clone_flutter/ui/home_screen.dart';
import 'package:texnomart_clone_flutter/ui/widgets/slider.dart';

import '../data/model/hive_model/product_holder.dart';
import '../data/source/local/my_hive_helper.dart';

class DetailScreen extends StatefulWidget {
  final ProductHolder item;
  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

List<String> detailImageList = [];


class _DetailScreenState extends State<DetailScreen> {
  final bloc = DetailBloc();

  @override
  void initState() {
    bloc.add(DetailInitialEvent(widget.item.id ?? 123));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
  
  
  @override
  Widget build(BuildContext context) {
    bool isSaved =
    HiveHelper.getAllKeysProductsFromFavourite().contains(widget.item.id);
    bool isBasket = HiveHelper.getAllKeysProductsFromBasket().contains(widget.item.id);
    String price = widget.item.salePrice.toString();

    if(price.length>3) {
      price = widget.item.salePrice.toString();
    }else if(price.length / 2 == 1 ) {

    }

    //widget.item.isSaved = isSaved;

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xFFFFC300),
          shadowColor: Theme.of(context).colorScheme.shadow,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              IconButton(onPressed: () async{
                // context.read<DashboardProvider>().increment();
                await HiveHelper.addProductToBasket(widget.item);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const DashboardPage(currentPage: 2)));
              }, icon: Icon(Icons.add_shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.percent_sharp)),
              IconButton(onPressed: (){
                setState(() {
                  widget.item.isSaved =
                  !widget.item.isSaved!;
                  isSaved == true
                      ? HiveHelper.deleteProductFromFavourite(widget.item)
                      : HiveHelper.addProductToFavourite(widget.item);

                });
              }, icon: Icon(!isSaved ? Icons.favorite_border : Icons.favorite)),
            ],
          ),
          scrolledUnderElevation: 1.0,
        ),
        body: BlocProvider.value(
  value: bloc,
  child: BlocConsumer<DetailBloc, DetailState>(
  listener: (context, state) {
    detailImageList = state.productDetailModel?.data?.data?.largeImages ?? [];
  },
  builder: (context, state) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 14, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailImageSlider(imgList: detailImageList),
                  SizedBox(height:16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mavjud",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.greenAccent,
                              fontSize: 14)),
                      Text("Mld. ${state.productDetailModel?.data?.data?.id}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12)),
                    ],
                  ),
                  SizedBox(height:10),
                  Text(
                      widget.item.name.toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize:16
                      )),
                  SizedBox(height:10),
                  Text(
                      "${widget.item.salePrice} so`m",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize:30
                      )),
                  SizedBox(height:16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0x15000000),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Muddatli to'lov:",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontSize: 14)),
                          Text(
                              widget.item.axiomMonthlyPrice.toString(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize:15
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  Row(
                    children: [
                      Text("Sharhlar: ${state.productDetailModel?.data?.data?.reviewsCount}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 14)),
                      Spacer(),
                      //Image.asset("assets/images/stars.png",fit: BoxFit.cover, width: 100),
                      Icon(Icons.arrow_forward_ios,color: Colors.black38)
                    ],
                  ),
                  SizedBox(height:10),
                  Divider(color: Colors.black12),
                  SizedBox(height:10),
                  Row(
                    children: [
                      Text("Do'konda mavjud",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 14)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.black38)
                    ],
                  ),
                  SizedBox(height:10),
                
                  Divider(color: Colors.black12),
                  SizedBox(height:10),
                  Row(
                    children: [
                      Text("Texnik xususiyatlari",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 14)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.black38)
                    ],
                  ),
                  SizedBox(height:10),


          
                  Divider(
                    color: Colors.black12,
                  ),
                
                  SizedBox(height:10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: ShapeDecoration(
                      color: !isBasket ? const Color(0xFFffc300) :  Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: InkWell(
                          onTap: ()  {
                            //context.read<DashboardProvider>().increment();

                            if(isBasket) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const DashboardPage(currentPage: 2)));
                            }else{
                              setState(() {
                                isBasket = HiveHelper.getAllKeysProductsFromBasket().contains(widget.item.id);
                                //isBasket == true ? HiveHelper.deleteProductFromBasket(widget.item) :
                                HiveHelper.addProductToBasket(widget.item);
                              });
                            }

                            context.read<DashboardProvider>().getBasketCount();

                            // await HiveHelper.addProductToBasket(widget.item);
                            // print(HiveHelper.getAllKeysProductsFromBasket().length);

                          },
                        child: Text( !isBasket ?
                          'Savatchaga' : 'Savatchada',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),

    ]
    );
  },
),
)
    );
  }
}
