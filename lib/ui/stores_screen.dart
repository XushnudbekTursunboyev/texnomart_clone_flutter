import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/stores/stores_bloc.dart';
import 'package:texnomart_clone_flutter/ui/maps_screen.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = StoresBloc();

    bloc.add(StoresInitialEvent());

    return BlocProvider.value(
      value: bloc,

      child: BlocConsumer<StoresBloc, StoresState>(
        builder:  (context, state) {
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                      itemCount: state.storesModel?.data?.data?[0].openedStores?.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, PageRouteBuilder(
                                pageBuilder:  (context, animation, secondaryAnimation) => MapsScreen(maps: state.storesModel?.data?.data?[0].openedStores ?? [], index: index)));
                          },
                          child: Container(
                            height: 56,
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                //SvgPicture.network(state.allCategoriesModel?.data?.categories?[index].smallImage ?? "null"),
                                SizedBox(width: 8,),
                                Text(state.storesModel?.data?.data?[0].openedStores?[index].name?.split('*').last ?? "null", style: TextStyle(fontWeight: FontWeight.bold),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey,)
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),

            ],
          ),
        );
      }, listener: ( context, state) {

    },
     )
    );
  }
}
