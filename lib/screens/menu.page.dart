import 'package:exam/core/constants/const_color.dart';
import 'package:exam/core/constants/my_text_style.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_const.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _countgr = 0;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Menu",
          style: MyTextStyle.myAppBarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Helo, Admin",
                  style: MyTextStyle.myHeloAdminTextStyle,
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromARGB(255, 218, 219, 205),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 95,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "Rp 1.250.000",
                                    style: MyTextStyle.myPlusMinusTextStyle,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "APR 30",
                                      style: MyTextStyle.myPlusMinusTextStyle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: CircleAvatar(
                                        radius: 2,
                                        backgroundColor:
                                            ColorConst.kPrimaryBlackColor,
                                      ),
                                    ),
                                    Text(
                                      "Hari ini",
                                      style: MyTextStyle.myPlusMinusTextStyle,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, left: 200),
                              child: Container(
                                height: 35,
                                width: 160,
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  color: Color.fromARGB(255, 253, 2, 2),
                                ),
                                child: Text(
                                  "Pesanan Baru",
                                  style: MyTextStyle.mypesananTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 190,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConst.container1,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Laporan",
                                  style: MyTextStyle.mySimpanTextStyle,
                                ),
                                Text(
                                  "Penjualan",
                                  style: MyTextStyle.mySimpanTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 35, bottom: 20),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: ColorConst.circleAvatarColor,
                              child: const Text("+1"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 190,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConst.container2,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Pengaturan",
                              style: MyTextStyle.mySimpanTextStyle,
                            ),
                            Text(
                              "Akun",
                              style: MyTextStyle.mySimpanTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 280,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConst.container3,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Barang",
                                  style: MyTextStyle.mySimpanTextStyle,
                                ),
                                Text(
                                  "Barang",
                                  style: MyTextStyle.mySimpanTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 50, bottom: 20),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConst.circleAvatarColor,
                              ),
                              height: 29,
                              width: 48,
                              child: Text(
                                "CEK",
                                style: MyTextStyle.mypesananTextStyle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 280,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConst.container4,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Laporan",
                                  style: MyTextStyle.mySimpanTextStyle,
                                ),
                                Text(
                                  "Lainnya",
                                  style: MyTextStyle.mySimpanTextStyle,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50, bottom: 20),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.orange,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.home,
                          color: Colors.black,
                          size: 35,
                        ),
                        Text(
                          "Home",
                          style: MyTextStyle.myExersisTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 35,
                        ),
                        Text(
                          "Explore",
                          style: MyTextStyle.myExersisTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.brightness_high,
                          color: Colors.black,
                          size: 35,
                        ),
                        Text(
                          "Order",
                          style: MyTextStyle.myExersisTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.local_car_wash_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        Text(
                          "Transtaksi",
                          style: MyTextStyle.myExersisTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 5,
                indent: 120,
                endIndent: 130,
                color: Colors.black,
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 70,
                        child: Image(
                          image: AssetImage('assets/images/banan.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Organic bananas",
                            style: MyTextStyle.myBananTextStyle,
                          ),
                          Text(
                            "120 gram, price",
                            style: MyTextStyle.myBananTextStyle,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: ColorConst.kPrimaryBlackColor,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          FontConst.babanRadius,
                                        ),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          _minus(_count);
                                        },
                                        icon: const Icon(
                                          Icons.exposure_minus_1,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      _count.toString(),
                                      style: MyTextStyle.myPlusMinusTextStyle,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: ColorConst.kPrimaryBlackColor,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          FontConst.babanRadius,
                                        ),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          _plus(_count);
                                        },
                                        icon: Icon(
                                          Icons.exposure_plus_1,
                                          color: ColorConst
                                              .getStartedPrimaryButtonColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _plusgr(int _countg) {
    if (_countg >= 0) {
      setState(() {
        _countgr += 10;
      });
    }
  }

  void _minusgr(int _countg) {
    if (_countg >= 10) {
      setState(() {
        _countgr -= 10;
      });
    }
  }

  void _plus(int _countt) {
    if (_countt >= 0) {
      setState(() {
        _count++;
      });
    }
  }

  void _minus(int _countt) {
    if (_countt >= 1) {
      setState(() {
        _count--;
      });
    }
  }
}
