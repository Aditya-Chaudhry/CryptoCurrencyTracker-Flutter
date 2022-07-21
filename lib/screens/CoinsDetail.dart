import 'package:flutter/material.dart';
import 'package:crytp_tracker/components/coinModel.dart';
import 'package:crytp_tracker/components/colors.dart';

class CoinDetails extends StatelessWidget {
  Coin coin;
  CoinDetails({required this.coin});
  dynamic _Color() {
    if (coin.price_change_percentage_24h > 0) {
      return const Color(0xFF0FF000);
    } else {
      return const Color(0xFFF00032);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Primary,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Ptext, //change your color here
        ),
        elevation: 0,
        title: Text(
          coin.name,
          style: TextStyle(
              color: Ptext, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Primary,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(children: [
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Image.network(
                  coin.image,
                  width: 60,
                  height: 60,
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Text(
                  coin.symbol,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30, color: Stext),
                ),
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    '₹ ' + coin.current_price.toString(),
                    style: TextStyle(
                        color: Stext,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Text(
                        coin.price_change_percentage_24h.toString() + '%',
                        style: TextStyle(
                            color: _Color(),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)))
              ],
            ),
          ),
          Text(
            'Statics',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Ptext),
          ),
          //1
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "Rank",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text(coin.market_cap_rank.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
          // 2
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "Market Cap",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text('₹ ' + coin.market_cap.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "Circulating Supply",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text(coin.circulating_supply.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "Total Supply",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text(coin.total_supply.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "Max Supply",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text(coin.max_supply.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "High 24h",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text(coin.high_24h.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      "Low 24h",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Stext),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Text(coin.low_24h.toString(),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
