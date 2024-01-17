

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:texnomart_clone_flutter/data/model/stores/stores_model.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapsScreen extends StatelessWidget {

  final List<OpenedStore> maps;
  final int index;
  const MapsScreen({super.key, required this.maps, required this.index});

  @override
  Widget build(BuildContext context) {
    final mapControllerCompleter = Completer<YandexMapController>();

    Future<void> _moveToCurrentLocation(double lat, double lon) async {
      (await mapControllerCompleter.future).moveCamera(
        animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: lat,
              longitude: lon,
            ),
            zoom: 15,
          ),
        ),
      );
    }

    _moveToCurrentLocation(double.parse(maps[index].lat.toString()), double.parse(maps[index].long.toString()));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Do`kon', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
      ),
        body: YandexMap(
          onMapCreated: (controller){
            mapControllerCompleter.complete(controller);
          },
          mapObjects: [
            PlacemarkMapObject(
                onTap: (object, point) {

                },
                text: PlacemarkText(text: "${maps[index].name?.split('*').last}", style: PlacemarkTextStyle(size: 12,placement: TextStylePlacement.bottom)),
                mapId: MapObjectId('154'),
                icon: PlacemarkIcon.single(PlacemarkIconStyle(scale: 0.3, image: BitmapDescriptor.fromAssetImage('assets/images/maps_icon.png'))),
                point: Point(latitude: double.parse(maps[index].lat.toString()), longitude: double.parse(maps[index].long.toString())))
          ],
        )
    );
  }
}
