import 'package:banglore_assignement/app/full_view/view/full_screen.dart';
import 'package:banglore_assignement/app/home_page/view/widget/home_widgets.dart';
import 'package:banglore_assignement/app/home_page/view/widget/list.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/fonts.dart';
import 'package:banglore_assignement/app/utiles/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            height20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: const [
                  Iconify(
                    Carbon.location_current,
                  ),
                  Text(
                    "Location not updated",
                    // style: Lato(cl: white),
                  ),
                  Spacer(),
                  CircleAvatar(),
                ],
              ),
            ),
            const CustomImageSlider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Services",
                      style: Lato(cl: black, sz: 25, fw: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(() => const FullScreenPage(),
                          transition: Transition.cupertino);
                    },
                    child: Text(
                      "view All",
                      style: gfontsubtitlefont(
                          cl: const Color.fromARGB(255, 59, 58, 58)),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                children: List.generate(textTitle.length - 3, (index) {
                  final data = textTitle[index];
                  final colorsFull = fullColor[index];
                  final subTitle = textSubTitle[index];
                  final icons = iconDatas[index];
                  return CustomGlassContainer(
                      data: data,
                      subTitle: subTitle,
                      icons: icons,
                      iconColor: colorsFull);
                }),
              ),
            ),
            height10,
            const TitleWidget(title: "Earn Delite Points"),
            height10,
            Container(
              margin: const EdgeInsets.all(5),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 198),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomCircleAvatar(),
                  CustomCircleAvatar(),
                  CustomCircleAvatar(),
                ],
              ),
            ),
            height10,
            const TitleWidget(title: "Order food on high restaurants"),
            height10,
            Row(
              children: const [
                OderHighWayFood(
                    title: 'Place\nOrder', icon: Icons.food_bank_outlined),
                OderHighWayFood(title: 'Digital\nMenu', icon: Icons.qr_code),
                OderHighWayFood(
                    title: 'Order\nStatus', icon: Icons.border_outer_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OderHighWayFood extends StatelessWidget {
  final String title;
  final IconData icon;
  const OderHighWayFood({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Container(
              height: 80,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 243, 243, 96),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  Text(
                    title,
                    style: gfontsubtitlefont(
                        cl: Colors.black, fw: FontWeight.bold),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

