import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';

class MAp extends StatefulWidget {
  const MAp({Key? key}) : super(key: key);

  @override
  State<MAp> createState() => _MApState();
}

class _MApState extends State<MAp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
        child: Column(children: [
          Flexible(
              child: FlutterMap(
            options: MapOptions(center: LatLng(30.033333, 31.233334), zoom: 5),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c']),
              MarkerLayerOptions(markers: [
                Marker(
                    point: LatLng(30.033333, 31.233334),
                    builder: (cxt) => const Icon(Icons.pin_drop))
              ]),
            ],
          ))
        ]),
      )),
    );
  }
}
