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
  const CustomGlassContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 175,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow,
                white,
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
    );
  }
}
