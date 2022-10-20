import 'package:banglore_assignement/app/home_page/view/widget/home_widgets.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/fonts.dart';
import 'package:banglore_assignement/app/utiles/widgets.dart';
import 'package:flutter/material.dart';
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
                  CircleAvatar()
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
                      // Get.to(() => ViewAllView(),
                      //     transition: Transition.cupertino);
                    },
                    child: Text(
                      "view All",
                      style: gfontsubtitlefont(cl: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                children: const [
                  CustomGlassContainer(),
                  CustomGlassContainer(),
                  CustomGlassContainer(),
                  CustomGlassContainer(),
                ],
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
            height20,
            const TitleWidget(title: "Order food on high restaurants"),
            Container()
          ],
        ),
      ),
    );
  }
}
