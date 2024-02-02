import 'package:flutter/material.dart';
import 'package:texnomart_clone_flutter/data/model/product_detail/product_detail_model.dart';

import '../data/model/stores/stores_model.dart';
import 'maps_screen.dart';

class AvailableStoreScreen extends StatelessWidget {
  final List<AvailableStore> stores;

  const AvailableStoreScreen(this.stores, {super.key});

  @override
  Widget build(BuildContext context) {
    List<OpenedStore> list = [];

    for(int i = 0; i< stores.length; i++){
      list.add(OpenedStore(stores[i].id, stores[i].name, stores[i].address, stores[i].description, stores[i].long, stores[i].lat, stores[i].phone, stores[i].workTime, []));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Do`konlar',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            MapsScreen(maps: list ?? [], index: 110)));
              },
              icon: Icon(Icons.map_rounded))
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 46,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xFFF7F7F9)),
              margin: EdgeInsets.only(top: 16, bottom: 8, right: 16, left: 16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search_sharp, color: Colors.grey, size: 24,),
                    SizedBox(width: 4,),
                    Text('Manzil', style: TextStyle(color: Colors.grey, fontSize: 16),),
                    Spacer(),
                    Icon(Icons.mic_rounded, color: Colors.grey, size: 24,)
                  ],
                ),
              )
          ),

          Flexible(
            flex: 10,
              child: ListView.builder(
                  itemCount: stores.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        MapsScreen(
                                          maps: list ?? [],
                                          index: 0,
                                        )));
                      },
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                //SvgPicture.network(state.allCategoriesModel?.data?.categories?[index].smallImage ?? "null"),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(
                                      'assets/images/ic_location.png',
                                      height: 32,
                                      width: 32,
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                        width: 300,
                                        child: Text(
                                          stores[index].address ?? "",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    Text(
                                      stores[index].workTime ?? "",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    );
                  })),
          Expanded(
            child: Container(
              height: 56,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFBBBBB7),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Eng yaqin joyni ko`rish', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
