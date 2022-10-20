import 'package:banglore_assignement/app/home_page/view_model/view_model.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
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
            Row(
              children: const [
                Iconify(
                  Carbon.location_current,
                ),
                Text(
                  "Kannur,Kerala,India",
                  // style: Lato(cl: white),
                ),
              ],
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
            height10,
            const Text("Earn Delite Points"),
            height20,
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 250, 227),
                  borderRadius: BorderRadius.circular(5)),
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
            const Text("Earn Delite Points"),
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
