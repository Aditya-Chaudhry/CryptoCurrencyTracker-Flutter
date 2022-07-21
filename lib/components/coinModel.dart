import 'package:flutter/material.dart';

class Coin {
  Coin(
      {required this.id,
      required this.name,
      required this.image,
      required this.current_price,
      required this.market_cap,
      required this.symbol,
      required this.market_cap_rank,
      required this.fully_diluted_valuation,
      required this.total_volume,
      required this.high_24h,
      required this.low_24h,
      required this.price_change_24h,
      required this.price_change_percentage_24h,
      required this.market_cap_change_24h,
      required this.market_cap_change_percentage_24,
      required this.circulating_supply,
      required this.total_supply,
      required this.max_supply,
      required this.ath,
      required this.ath_change_percentage,
      required this.ath_date,
      required this.at1,
      required this.at1_change_percentage,
      required this.at1_date,
      required this.last_update});

  dynamic id;
  dynamic name;
  dynamic image;
  dynamic current_price;
  dynamic market_cap;
  dynamic symbol;
  dynamic market_cap_rank;
  dynamic fully_diluted_valuation;
  dynamic total_volume;
  dynamic high_24h;
  dynamic low_24h;
  dynamic price_change_24h;
  dynamic price_change_percentage_24h;
  dynamic market_cap_change_24h;
  dynamic market_cap_change_percentage_24;
  dynamic circulating_supply;
  dynamic total_supply;
  dynamic max_supply;
  dynamic ath;
  dynamic ath_change_percentage;
  dynamic ath_date;
  dynamic at1;
  dynamic at1_change_percentage;
  dynamic at1_date;
  dynamic last_update;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        current_price: json['current_price'],
        market_cap: json['market_cap'],
        symbol: json['symbol'],
        market_cap_rank: json['market_cap_rank'],
        fully_diluted_valuation: json['fully_diluted_valuation'],
        total_volume: json['total_volume'],
        high_24h: json['high_24h'],
        low_24h: json['low_24h'],
        price_change_24h: json['price_change_24h'],
        price_change_percentage_24h: json['price_change_percentage_24h'],
        market_cap_change_24h: json['market_cap_change_24h'],
        market_cap_change_percentage_24:
            json['market_cap_change_percentage_24h'],
        circulating_supply: json['circulating_supply'],
        total_supply: json['total_supply'],
        max_supply: json['max_supply'],
        ath: json['ath'],
        ath_change_percentage: json['ath_change_percentage'],
        ath_date: json['ath_date'],
        at1: json['at1'],
        at1_change_percentage: json['at1_change_percentage'],
        at1_date: json['at1_date'],
        last_update: json['last_update']);
  }
}

List<Coin> CoinList = [];
