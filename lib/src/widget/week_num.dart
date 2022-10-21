import 'package:flutter/cupertino.dart';
import '../utils/price.dart';
import 'lotto_ball.dart';

class WeeNumkWidget extends StatelessWidget {
  final data;
  const WeeNumkWidget({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('${data['drwNo']} 회 당첨결과'),
          Text('${data['drwNo']}'),
          Text(
            '1등 총 당첨금 : ${PriceUtils.calcStringToWon(
                  data['totSellamnt'].toString(),
                )}',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            '1등 상금액 : ${PriceUtils.calcStringToWon(
                  data['firstWinamnt'].toString(),
                )}',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            '당첨인원 : ${data['firstPrzwnerCo']} 명',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          LottoBallWidget(
            data: data,
          ),
        ],
      ),
    );
  }
}