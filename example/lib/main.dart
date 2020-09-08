import 'package:flutter/material.dart';
import 'package:woocommerce_rest_api/woocommerce_rest_api.dart';

void main() {
  runApp(MyApp());
}
// Customer
// url: 'http://192.168.100.184:90/ecommerce',
//             consumerKey: 'ck_7c106d59fe4a4eff6f59ffda227c95723826963f',
//             consumerSecret: 'cs_aaa4b9572c3c6f6b6f506eb082033090ab92f8bd'

// Admin
// url: 'http://192.168.100.184:90/ecommerce',
// consumerKey: 'ck_c07defb38b1b9db7bf73f5faaf9d57724044e396',
// consumerSecret: 'cs_faf42cc094a635a201a680640e72780e2927fef1'
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
      consumerSecret: 'cs_faf42cc094a635a201a680640e72780e2927fef1',
    ).product.getProducts().then((value) {
      print(value);
    });
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
