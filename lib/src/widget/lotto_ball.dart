import 'package:flutter/material.dart';

class LottoBallWidget extends StatelessWidget {
  final data;
  const LottoBallWidget({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Wrap(
        verticalDirection: VerticalDirection.down,
        children: [
          ClipOval(
            child: Material(
              color: data['drwtNo1'] < 11
                  ? const Color(0xfffbc400)
                  : data['drwtNo1'] < 21
                  ? const Color(0xff69c8f2)
                  : data['drwtNo1'] < 31
                  ? const Color(0xffff7272)
                  : data['drwtNo1'] < 41
                  ? const Color(0xffaaa)
                  : const Color(0xffb0d840), // button color
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data['drwtNo1'] < 10
                      ? '0${data['drwtNo1'].toString()}'
                      : data['drwtNo1'].toString(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ClipOval(
            child: Material(
              color: data['drwtNo2'] < 11
                  ? const Color(0xfffbc400)
                  : data['drwtNo1'] < 21
                  ? const Color(0xff69c8f2)
                  : data['drwtNo1'] < 31
                  ? const Color(0xffff7272)
                  : data['drwtNo1'] < 41
                  ? const Color(0xffaaa)
                  : const Color(0xffb0d840), //olor
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data['drwtNo2'] < 10
                      ? '0${data['drwtNo2'].toString()}'
                      : data['drwtNo2'].toString(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ClipOval(
            child: Material(
              color: data['drwtNo3'] < 11
                  ? const Color(0xfffbc400)
                  : data['drwtNo1'] < 21
                  ? const Color(0xff69c8f2)
                  : data['drwtNo1'] < 31
                  ? const Color(0xffff7272)
                  : data['drwtNo1'] < 41
                  ? const Color(0xffaaa)
                  : const Color(0xffb0d840), // button color
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data['drwtNo3'] < 10
                      ? '0${data['drwtNo3'].toString()}'
                      : data['drwtNo3'].toString(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ClipOval(
            child: Material(
              color: data['drwtNo4'] < 11
                  ? const Color(0xfffbc400)
                  : data['drwtNo1'] < 21
                  ? const Color(0xff69c8f2)
                  : data['drwtNo1'] < 31
                  ? const Color(0xffff7272)
                  : data['drwtNo1'] < 41
                  ? const Color(0xffaaa)
                  : const Color(0xffb0d840), // button color
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data['drwtNo4'] < 10
                      ? '0${data['drwtNo4'].toString()}'
                      : data['drwtNo4'].toString(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ClipOval(
            child: Material(
              color: data['drwtNo5'] < 11
                  ? const Color(0xfffbc400)
                  : data['drwtNo1'] < 21
                  ? const Color(0xff69c8f2)
                  : data['drwtNo1'] < 31
                  ? const Color(0xffff7272)
                  : data['drwtNo1'] < 41
                  ? const Color(0xffaaa)
                  : const Color(0xffb0d840), // button color
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data['drwtNo5'] < 10
                      ? '0${data['drwtNo5'].toString()}'
                      : data['drwtNo5'].toString(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ClipOval(
            child: Material(
              color: data['drwtNo6'] < 11
                  ? const Color(0xfffbc400)
                  : data['drwtNo1'] < 21
                  ? const Color(0xff69c8f2)
                  : data['drwtNo1'] < 31
                  ? const Color(0xffff7272)
                  : data['drwtNo1'] < 41
                  ? const Color(0xffaaa)
                  : const Color(0xffb0d840), // button color
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  data['drwtNo6'] < 10
                      ? '0${data['drwtNo6'].toString()}'
                      : data['drwtNo6'].toString(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          data['bnusNo'] == null
              ? Container()
              : const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Icon(
                Icons.add,
                size: 20,
                color: Color(0xffff7272),
              ),
            ),
          ),
          data['bnusNo'] == null
              ? Container()
              : Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ClipOval(
            child: Material(
                color: data['bnusNo'] < 11
                    ? const Color(0xfffbc400)
                    : data['drwtNo1'] < 21
                    ? const Color(0xff69c8f2)
                    : data['drwtNo1'] < 31
                    ? const Color(0xffff7272)
                    : data['drwtNo1'] < 41
                    ? const Color(0xffaaa)
                    : const Color(0xffb0d840), // button color
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    data['bnusNo'] < 10
                        ? '0${data['bnusNo'].toString()}'
                        : data['bnusNo'].toString(),
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
            ),
          ),
              ),
        ],
      ),
    );
  }
}