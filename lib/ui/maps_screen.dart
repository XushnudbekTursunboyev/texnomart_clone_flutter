

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:texnomart_clone_flutter/data/model/stores/stores_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapsScreen extends StatelessWidget {

  final List<OpenedStore> maps;
  final int index;
  const MapsScreen({super.key, required this.maps, required this.index});

  @override
  Widget build(BuildContext context) {
    final mapControllerCompleter = Completer<YandexMapController>();

    void launchYandexNavigator(double lat, double lang) async {
      // Yandex Navigator URL scheme
      final url = "yandexnavi://build_route_on_map?lat=$lat&lon=$lang";

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        // Handle error - Could not launch Yandex Navigator
        print("Could not launch Yandex Navigator.");
      }
    }
    
    Future<void> _moveToCurrentLocation(double lat, double lon) async {
      (await mapControllerCompleter.future).moveCamera(
        animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: lat,
              longitude: lon,
            ),
            zoom: index == 110 ? 5 : 15,
          ),
        ),
      );
    }

    if(index == 110 ){
      _moveToCurrentLocation(41.311081, 69.240562);
    }else{
      _moveToCurrentLocation(double.parse(maps[index].lat.toString()), double.parse(maps[index].long.toString()));
    }

    final List<MapObject> mapObject = [];

    for(int i=0; i< maps.length; i++){

      print('aaaaaaaaaaaaaaaaa ${maps[i]}');

      mapObject.add(
          PlacemarkMapObject(
              onTap: (object, point) {
                showModalBottomSheet(context: context,
                    builder: (context) => Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          InkWell(
                            onTap: (){
                              MapsLauncher.launchCoordinates(point.latitude, point.longitude);
                              //launchYandexNavigator(point.latitude, point.longitude);
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amberAccent
                              ),
                              child: const Center(child: Text('Show direction')),
                            ),
                          )

                        ],
                      ),
                    ));
              },
           //   text: PlacemarkText(text: "${maps[i].name?.split('*').last}", style: PlacemarkTextStyle(size: 12,placement: TextStylePlacement.bottom)),
              mapId: MapObjectId('154${i}'),
              icon: PlacemarkIcon.single(PlacemarkIconStyle(scale: 2, image: BitmapDescriptor.fromAssetImage('assets/images/ic_location.png'))),
              point: Point(latitude: double.parse(maps[i].lat.toString()), longitude: double.parse(maps[i].long.toString())))
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(index == 110 ? 'Do`konlar' : "Do`kon", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
      ),
        body: YandexMap(
          onMapCreated: (controller){
            mapControllerCompleter.complete(controller);
          },
          mapObjects: index == 110 ? mapObject : [PlacemarkMapObject(
              onTap: (object, point) {

                showModalBottomSheet(context: context,
                   isDismissible: false,
                    builder: (context) =>
                        Container(
                      height: 200,
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${maps[index].address}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                          SizedBox(height: 8,),
                          Row(children: [
                            Icon(Icons.watch_later_outlined, color: Colors.grey, size: 20,),
                            SizedBox(width: 5,),
                            Text('Du-Ya(${maps[index].workTime})', style: TextStyle(color: Colors.grey, fontSize: 16),),
                          ],),
                          Row(children: [
                            Icon(Icons.phone, color: Colors.grey, size: 20,),
                            SizedBox(width: 5,),
                            Text('${maps[index].phone}', style: TextStyle(color: Colors.grey, fontSize: 16),),
                          ],),
                          SizedBox(height: 8,),
                          InkWell(
                            onTap: (){
                              MapsLauncher.launchCoordinates(point.latitude, point.longitude);
                              //launchYandexNavigator(point.latitude, point.longitude);
                            },
                            child: Container(
                              width: 150,
                              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(width: 1, color: Colors.grey),
                                  // color: Colors.amberAccent
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_outlined, color: Colors.amberAccent, size: 20,),
                                  SizedBox(width: 8,),
                                  Text('Yo`nalish', style: TextStyle(fontWeight: FontWeight.w200),)
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ));

              },
              text: PlacemarkText(text: "${maps[index].name?.split('*').last}", style: PlacemarkTextStyle(size: 12,placement: TextStylePlacement.bottom)),
              mapId: MapObjectId('154'),

              icon: PlacemarkIcon.single(PlacemarkIconStyle(scale: 1, image: BitmapDescriptor.fromAssetImage('assets/images/ic_location.png'))),
              point: Point(latitude: double.parse(maps[index].lat.toString()), longitude: double.parse(maps[index].long.toString())))]
        )
    );
  }
}
