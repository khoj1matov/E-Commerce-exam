import 'package:exam/core/constants/const_color.dart';
import 'package:exam/core/constants/my_text_style.dart';
import 'package:exam/mock/data.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_const.dart';

class EditBarang extends StatefulWidget {
  const EditBarang({Key? key}) : super(key: key);

  @override
  _EditBarangState createState() => _EditBarangState();
}

class _EditBarangState extends State<EditBarang> {
  int _countgr = 0;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/banan.jpg"),
                    ),
                    color: ColorConst.editBarangColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/menu');
                  },
                  icon: Icon(
                    Icons.chevron_left_rounded,
                    color: ColorConst.chevronColor,
                    size: 30,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Editing Barang",
                    style: MyTextStyle.myEditBarangTextStyle,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  alignment: Alignment.bottomRight,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.delete_outline,
                      color: ColorConst.kPrimaryWhiteColor,
                      // size: ,
                    ),
                    backgroundColor: ColorConst.floatingActionButtonColor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 50,
                right: 20,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Name item",
                      style: MyTextStyle.myNameItemTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      BananModel.name.toString(),
                      style: MyTextStyle.myBananTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Divider(
                thickness: 1,
                color: ColorConst.kPrimaryBlackColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 50,
                right: 20,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 25, bottom: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Berat Satuan (gram)",
                          style: MyTextStyle.myNameItemTextStyle,
                        ),
                        Text(
                          "Stok Barang",
                          style: MyTextStyle.myNameItemTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _minusgr(_countgr);
                              },
                              icon: const Icon(
                                Icons.exposure_minus_1,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              height: 46,
                              width: 61,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: ColorConst.kPrimaryBlackColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                  FontConst.babanRadius,
                                ),
                              ),
                              child: Text(
                                _countgr.toString(),
                                style: MyTextStyle.myPlusMinusTextStyle,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _plusgr(_countgr);
                              },
                              icon: Icon(
                                Icons.exposure_plus_1,
                                color: ColorConst.getStartedPrimaryButtonColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _minus(_count);
                              },
                              icon: const Icon(
                                Icons.exposure_minus_1,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              height: 46,
                              width: 61,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: ColorConst.kPrimaryBlackColor,
                                ),
                                borderRadius: BorderRadius.circular(
                                  FontConst.babanRadius,
                                ),
                              ),
                              child: Text(
                                _count.toString(),
                                style: MyTextStyle.myPlusMinusTextStyle,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _plus(_count);
                              },
                              icon: Icon(
                                Icons.exposure_plus_1,
                                color: ColorConst.getStartedPrimaryButtonColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Divider(
                thickness: 1,
                color: ColorConst.kPrimaryBlackColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "Harga Item",
                style: MyTextStyle.myNameItemTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, right: 23, left: 23, bottom: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    height: 46,
                    width: 135,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: ColorConst.kPrimaryBlackColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        FontConst.babanRadius,
                      ),
                    ),
                    child: Text(
                      BananModel.price.toString(),
                      style: MyTextStyle.myPlusMinusTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 1,
                      color: ColorConst.kPrimaryBlackColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: ColorConst.kPrimaryBlackColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        FontConst.babanRadius,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          Exersise.exersise,
                          style: MyTextStyle.myExersisTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 190,
                        width: 215.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                            image: ExactAssetImage(
                              "",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: ColorConst.flashFruitsColor,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 120),
                              width: 96,
                              child: Column(
                                children: [
                                  Text(
                                    "Frash Fruits & Vegetable",
                                    style: MyTextStyle.myPlusMinusTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 190,
                        width: 215.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                            image: ExactAssetImage(
                              "",
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: ColorConst.cokingOilColor,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 120),
                              width: 96,
                              child: Column(
                                children: [
                                  Text(
                                    "Cooking Oil & Ghee",
                                    style: MyTextStyle.myPlusMinusTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
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
                      child: Column(
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(450, 63),
                      primary: ColorConst.simpanColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          FontConst.simpleRadius,
                        ),
                      ),
                    ),
                    child: Text(
                      "Simpan",
                      style: MyTextStyle.mySimpanTextStyle,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
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
