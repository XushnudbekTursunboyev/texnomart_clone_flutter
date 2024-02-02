
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:texnomart_clone_flutter/data/model/stores/stores_model.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/stores/stores_bloc.dart';
import 'package:texnomart_clone_flutter/ui/maps_screen.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final elements = [];
    final bloc = StoresBloc();
    bloc.add(StoresInitialEvent());
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<StoresBloc, StoresState>(
        builder:  (context, state) {
            if(state.status == Status.Loading) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.amberAccent,
                  title: Text('Do`konlar', style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                  actions: [
                    IconButton(onPressed: () {
                    }, icon: Icon(Icons.map_rounded))
                  ],
                ),
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.amberAccent,
                  title: Text('Do`konlar', style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                  actions: [
                    IconButton(onPressed: () {
                      Navigator.push(context, PageRouteBuilder(pageBuilder:  (context, animation, secondaryAnimation) => MapsScreen(maps: state.storesModel?.data?.data?[0].openedStores ?? [], index: 110)));

                    }, icon: Icon(Icons.map_rounded))
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
                        child: GroupedListView<dynamic, String>(
                            elements: elements,

                            groupBy: (element) => element['group'],
                            groupSeparatorBuilder: (value) => Container(
                                padding: EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 12),
                                child: Text(value, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),)),
                            useStickyGroupSeparators: true,
                            itemBuilder: (context, element) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context, PageRouteBuilder(pageBuilder:  (context, animation, secondaryAnimation) => MapsScreen(maps: [OpenedStore(0, element['name'], element['address'], '', element['lang'], element['lat'], element['phone'], element['date'], [])] ?? [], index: 0)));
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
                                              child: Image.asset('assets/images/ic_location.png', height: 32, width: 32,)),
                                          SizedBox(width: 8,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                  width: 300,
                                                  child: Text( element['address'], style: TextStyle(fontWeight: FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis,)),
                                              Text(element['date'], style: TextStyle(color: Colors.grey),)
                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey,)
                                        ],
                                      ),
                                      SizedBox(height: 8,),
                                      Divider(height: 1, color: Colors.grey,)
                                    ],
                                  ),

                                ),
                              );
                            })
                    ),
                    
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
      },
        listener: ( context, state) {
          var size = state.storesModel?.data?.data?.length ?? 2;

          for(int i = 0; i< size; i++){
            var jSize = state.storesModel?.data?.data?[i].openedStores?.length ?? 1;
            if(state.storesModel?.data?.data?[i].name != null && state.storesModel?.data?.data?[i].name != 'Barchasi'){
              for(int j = 0; j<jSize; j++ ){
                elements.add(
                    { 'group': '${state.storesModel?.data?.data?[i].name}',
                      'name': '${state.storesModel?.data?.data?[i].openedStores?[j].name}',
                      'address': '${state.storesModel?.data?.data?[i].openedStores?[j].address}',
                      'lat': '${state.storesModel?.data?.data?[i].openedStores?[j].lat}',
                      'lang': '${state.storesModel?.data?.data?[i].openedStores?[j].long}',
                      'date': '${state.storesModel?.data?.data?[i].openedStores?[j].workTime}',
                      'phone': '${state.storesModel?.data?.data?[i].openedStores?[j].phone}',
                    }
                );
              }
            }

          }

    },
     )
    );
  }
}
