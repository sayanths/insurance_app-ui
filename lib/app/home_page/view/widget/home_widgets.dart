import 'package:banglore_assignement/app/home_page/view_model/view_model.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class CustomImageSlider extends StatelessWidget {
  const CustomImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
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
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: Lato(cl: black, sz: 22, fw: FontWeight.w600),
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
  final String data;
  final String subTitle;
  const CustomGlassContainer({
    Key? key,
    required this.data,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 184,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow,
                Color.fromARGB(255, 253, 228, 0),
                Colors.yellow,
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
                  children: [
                    Text(
                      data,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Icon(
                      Icons.align_vertical_center_sharp,
                      color: white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      (subTitle),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
