// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';

import 'package:flutter/material.dart';
 import 'package:connectivity_plus/connectivity_plus.dart';
import 'currentlocation.dart';





class HomeMap extends StatefulWidget {
  const HomeMap({Key? key}) : super(key: key);

  @override
  State<HomeMap> createState() => _HomeMapState();
}



class _HomeMapState extends State<HomeMap> {
    var wifiBSSID ="no";
  var wifiIP="no";
  var wifiName="";
  bool iswificonnected = false;
  bool isInternetOn = true;

  static const String title = 'Has Internet?';
  late StreamSubscription subscription;
  @override
  void initState() {
    super.initState();

   getConnect();
  }
  @override
  void dispose() {
    subscription.cancel();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:isInternetOn
          ? iswificonnected ? showWifi() : showMobile()
          : buildAlertDialog(),

          floatingActionButton: FloatingActionButton(onPressed: (){
          

          },
          child: Text("Location"),
          ),
    );
  }

   AlertDialog buildAlertDialog() {
    return const AlertDialog(
      title: Text(
        "You are not Connected to Internet",
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }

 Center showWifi() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              " Your are connected to ${iswificonnected ? "WIFI" : "MOBILE DATA"}"),
          Text(iswificonnected ? "$wifiBSSID" : "Not Wifi"),
          Text(wifiIP),
          // ignore: unnecessary_string_interpolations
          Text("$wifiName")
        ],
      ),
    );
  }


 Center showMobile() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const  <Widget>[
           Text(" Your are Connected to  MOBILE DATA"),
        ],
      ),
    );
  }



  void getConnect() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        isInternetOn = false;
      });
    } else if (connectivityResult == ConnectivityResult.mobile) {
     
      iswificonnected = false;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      
      iswificonnected = true;
      setState(() async {
        wifiName =  (ConnectivityResult.wifi.name);
      });
   
    }
  }


  }

