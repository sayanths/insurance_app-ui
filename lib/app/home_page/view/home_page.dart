import 'package:banglore_assignement/app/home_page/view_model/view_model.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';

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
                Icon(Icons.navigation),
                Text("Location not updated"),
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
          ],
        ),
      ),
    );
  }
}
