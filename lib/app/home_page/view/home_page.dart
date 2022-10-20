import 'package:banglore_assignement/app/home_page/view_model/view_model.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/fonts.dart';
import 'package:banglore_assignement/app/utiles/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
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
            ImageSlideshow(
              indicatorBackgroundColor: Colors.transparent,
              indicatorColor: white,
              indicatorRadius: 5,
              isLoop: true,
              autoPlayInterval: 4000,
              children: List.generate(
                list.length,
                (index) {
                  final data = list[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      image: DecorationImage(
                        image: NetworkImage(data),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Services",
                    style: Lato(cl: black, sz: 25, fw: FontWeight.bold),
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
            height20,
            const Text("Earn Delite Points"),
            height20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomCircleAvatar(),
                CustomCircleAvatar(),
                CustomCircleAvatar(),
              ],
            ),
            height20,
            const Text("Order food on high restaurants"),
            Container()
          ],
        ),
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: yellow,
      radius: 35,
      child: CircleAvatar(
        radius: 32,
        backgroundColor: white,
        child: Icon(
          Icons.food_bank,
          size: 50,
        ),
      ),
    );
  }
}

class CustomGlassContainer extends StatelessWidget {
  const CustomGlassContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 80,
            width: 162,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 230, 230, 230),
                  Color.fromARGB(255, 254, 254, 158),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("sdssd"),
                      Icon(
                        Icons.mail,
                        color: white,
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ("sdsd"),
                      // style:
                      //     gfontsubtitlefont(cl: white, fw: FontWeight.bold, sz: 17),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
