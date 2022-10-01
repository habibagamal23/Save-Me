import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Map2 extends StatefulWidget {
  const Map2({Key? key}) : super(key: key);

  @override
  State<Map2> createState() => _Map2State();
}

class _Map2State extends State<Map2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FlutterMap(
              options: MapOptions(
                  minZoom: 10.0, center: LatLng(30.033333, 31.233334)),
              layers: [
                TileLayerOptions(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: ['a', 'b', 'c']),
                MarkerLayerOptions(markers: [
                  Marker(
                      width: 45.0,
                      height: 45.0,
                      point: LatLng(30.033333, 31.233334),
                      builder: (context) =>
                          // ignore: avoid_unnecessary_containers
                          Container(
                            child: IconButton(
                                icon: const Icon(Icons.accessibility),
                                // ignore: avoid_print
                                onPressed: () {
                                  print('Marker tapped!');
                                }),
                          ))
                ])
              ])
        ],
      ),
    );
  }
}
