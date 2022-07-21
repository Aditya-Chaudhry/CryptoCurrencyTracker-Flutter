import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'components/coinModel.dart';
import 'components/CoinCard.dart';
import 'screens/CoinsDetail.dart';
import 'components/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late var currency;
  Future<List<Coin>> fetchCoin() async {
    CoinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=$currency&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=1h%2C%2024h%2C%207d%2C%2014d%2C%2030d%2C%20200d%2C%201y'));
    if (response.statusCode == 200) {
      List<dynamic> Values = [];
      Values = json.decode(response.body);
      if (Values.length > 0) {
        for (var i = 0; i < Values.length; i++) {
          if (Values[i] != null) {
            Map<String, dynamic> map = Values[i];
            CoinList.add(Coin.fromJson(map));
          }
        }
      }
      setState(() {
        CoinList;
      });
      return CoinList;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  @override
  void initState() {
    currency = 'inr';
    fetchCoin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Primary,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Primary,
            title: Text(
              'Crytpo Currency Tracker',
              style: TextStyle(
                  color: Ptext, fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          body: ListView.builder(
              itemCount: CoinList.length,
              itemBuilder: ((context, index) {
                return CoinCard(
                  coin: CoinList[index],
                );
              }))),
    );
  }
}
