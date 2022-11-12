import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'widget/week_num.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var data;

  @override
  void initState() {
    lottoTotalResult();
    super.initState();
  }

  lottoTotalResult() async {
    String date = "20220924";
    int _lottoDrwNo = 1034;

    var _toDay = DateTime.now();
    int difference =
        int.parse(_toDay.difference(DateTime.parse(date)).inDays.toString());

    _lottoDrwNo = _lottoDrwNo + (difference ~/ 7);

    http.Response response = await http.get(Uri.parse(
        "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=${_lottoDrwNo}"));

    if (response.statusCode == 200) {
      setState(() {
        data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      });
    } else {
      response = await http.get(Uri.parse(
          "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=${(_lottoDrwNo - 1)}"));

      setState(() {
        data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if ((data == null)) {
      return Container();
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '${data['drwNo']} 회차',
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => super.widget),
                );
              },
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: WeeNumkWidget(
                data: data,
              ),
            ),
            // MainButtonWidget(),
            const SizedBox(height: 7),
            // Container(
            //   height: 60,
            //   child: AdmobBanner(
            //     adUnitId: adBannerUnitId,
            //     adSize: AdmobBannerSize.BANNER,
            //   ),
            // ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 1,
          shape: const CircularNotchedRectangle(),
          notchMargin: 7,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey[400],
            selectedItemColor: Colors.blueGrey[800],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            // onTap: onSelectItem,
            currentIndex: 0,
            elevation: 2,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.font_download),
                label: '폰트',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.brush),
                label: '폰트색상',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: '앨범',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    CupertinoIcons.rectangle_fill_on_rectangle_angled_fill),
                label: '백그라운드색상',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.save_alt),
                label: '저장',
              ),
            ],
          ),
        ),
      );
    }
  }
}
