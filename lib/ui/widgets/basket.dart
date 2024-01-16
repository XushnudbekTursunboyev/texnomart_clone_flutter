import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texnomart_clone_flutter/data/model/hive_model/product_holder.dart';

Widget basketItem(
    void Function() onClick,
    context,
    ProductHolder product,
    void Function() onFavouriteClick,
    void Function() onDeleteClick,
    void Function() clickPlus,
    void Function() clickMinus) {
  return GestureDetector(
    onTap: onClick,
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 120,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        product.image ?? '',
                        height: 100,
                        width: 100,
                      ))),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Text(product.name ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 15)),
                  ),
                  SizedBox(
                    width: 160,
                    child: Text("${product.salePrice ?? ''} so'm",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700, fontSize: 14)),
                  ),
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                        color: const Color(0x15000000),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, left: 5.0, bottom: 2.0, right: 3),
                      child: Text(product.axiomMonthlyPrice.toString() ?? '',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 12)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border:
                                Border.all(color: Colors.black.withAlpha(50))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                                borderRadius: BorderRadius.circular(5),
                                highlightColor:
                                    const Color(0xFFfbc100).withAlpha(60),
                                splashColor:
                                    const Color(0xFFfbc100).withAlpha(60),
                                onTap: clickMinus,
                                child: Icon(Icons.arrow_back_ios)),
                            Text(product.count?.toString() ?? '0',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 14)),
                            InkWell(
                                borderRadius: BorderRadius.circular(5),
                                highlightColor:
                                    const Color(0xFFfbc100).withAlpha(60),
                                splashColor:
                                    const Color(0xFFfbc100).withAlpha(60),
                                onTap: clickPlus,
                                child: Icon(Icons.arrow_forward_ios_rounded)),
                          ],
                        ),
                      ),
                      // const Spacer(),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  const SizedBox(height: 105),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: onFavouriteClick, icon: product.isSaved == true
                          ? const Icon(Icons.favorite_rounded,
                          color: Colors.redAccent)
                          : Icon(Icons.favorite_border_rounded,
                          color: Colors.black.withAlpha(50))),

                      const SizedBox(width: 5),
                      IconButton(onPressed: onDeleteClick, icon: Icon(Icons.delete, color: Colors.black,))
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Spacer(),
          const Divider(color: Color(0x15000000)),
        ],
      ),
    ),
  );
}
