import 'package:flutter/material.dart';
import 'coinModel.dart';
import 'package:crytp_tracker/screens/CoinsDetail.dart';
import 'package:crytp_tracker/components/colors.dart';

class CoinCard extends StatelessWidget {
  Coin coin;

  dynamic _Color() {
    if (coin.price_change_percentage_24h > 0) {
      return const Color(0xFF0FF000);
    } else {
      return const Color(0xFFF00032);
    }
  }

  CoinCard({required this.coin});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CoinDetails(coin: coin)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
        decoration: BoxDecoration(
            color: Quantinary,
            border: Border.all(width: 1, color: Quantinary),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Primary,
                  border: Border.all(color: Primary),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                coin.image,
                width: 60,
                height: 60,
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coin.name,
                        style: TextStyle(
                            color: Ptext,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ]),
              ),
            ),
            Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '₹ ' + coin.current_price.toString(),
                        style: TextStyle(
                            color: Ptext,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        coin.price_change_percentage_24h.toString() + ' %',
                        style: TextStyle(
                            color: _Color(),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
