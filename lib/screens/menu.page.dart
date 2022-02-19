import 'package:exam/core/constants/const_color.dart';
import 'package:exam/core/constants/my_text_style.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                              padding: const EdgeInsets.only(top: 12, left: 200),
                              child: Container(
                                height: 35,
                                width: 160,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(vertical: 20),
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
                      height: 190,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConst.container1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Container(
                      height: 190,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConst.container2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // body: CustomScrollView(
      //   slivers: [
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         ((context, index) => Padding(
      //               padding: const EdgeInsets.symmetric(
      //                   horizontal: 50, vertical: 15),
      //               child: Text(
      //                 "Helo, Admin",
      //                 style: MyTextStyle.myHeloAdminTextStyle,
      //               ),
      //             )),
      //         childCount: 1,
      //       ),
      //     ),
      // SliverPadding(
      //   padding: const EdgeInsets.all(30),
      //   sliver: SliverGrid(
      //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 250,
      //       mainAxisExtent: 190,
      //       mainAxisSpacing: 15.0,
      //       crossAxisSpacing: 15.0,
      //     ),
      //     delegate: SliverChildBuilderDelegate(
      //       (BuildContext context, int index) {
      //         return Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             color: ColorConst.listColor[index],
      //           ),
      //         );
      //       },
      //       childCount: 2,
      //     ),
      //   ),
      // ),
      // SliverPadding(
      //   padding: const EdgeInsets.symmetric(horizontal: 30),
      //   sliver: SliverGrid(
      //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 250,
      //       mainAxisExtent: 240,
      //       mainAxisSpacing: 15.0,
      //       crossAxisSpacing: 15.0,
      //     ),
      //     delegate: SliverChildBuilderDelegate(
      //       (BuildContext context, int index) {
      //         return Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             color: ColorConst.list2Color[index],
      //           ),
      //         );
      //       },
      //       childCount: 2,
      //     ),
      //   ),
      // ),
      //       ],
      //     ),
    );
  }
}
