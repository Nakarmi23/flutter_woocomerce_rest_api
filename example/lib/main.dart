import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:woocommerce_rest_api/woocommerce_rest_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WooCommerceRestAPI(
            url: 'http://192.168.100.184:90/ecommerce',
            consumerKey: 'ck_c07defb38b1b9db7bf73f5faaf9d57724044e396',
            consumerSecret: 'cs_faf42cc094a635a201a680640e72780e2927fef1')
        .putAsync('products/13', {'regular_price': "24.54"}).then(
            (value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: \n'),
        ),
      ),
    );
  }
}
