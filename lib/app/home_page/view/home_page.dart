import 'package:banglore_assignement/app/full_view/view/full_screen.dart';
import 'package:banglore_assignement/app/home_page/view/widget/high_way.dart';
import 'package:banglore_assignement/app/home_page/view/widget/home_widgets.dart';
import 'package:banglore_assignement/app/home_page/view/widget/list.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/fonts.dart';
import 'package:banglore_assignement/app/utiles/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            height20,
            Location(),
            CustomImageSlider(),
            ServiceAndViewAll(),
            Services(),
            height10,
            TitleWidget(title: "Earn Delite Points"),
            height10,
            CustomEarnDelitePoints(),
            height10,
            TitleWidget(title: "Order food on high restaurants"),
            height10,
            OrderFoodOnHighRestaurants(),
          ],
        ),
      ),
    );
  }
}

class OrderFoodOnHighRestaurants extends StatelessWidget {
  const OrderFoodOnHighRestaurants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        OderHighWayFood(title: 'Place\nOrder', icon: Icons.food_bank_outlined),
        OderHighWayFood(title: 'Digital\nMenu', icon: Icons.qr_code),
        OderHighWayFood(
            title: 'Order\nStatus', icon: Icons.border_outer_rounded),
      ],
    );
  }
}

class CustomEarnDelitePoints extends StatelessWidget {
  const CustomEarnDelitePoints({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 100,
      width: 200,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 198),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(foodIcon.length, (index) {
            final foodIcons = foodIcon[index];
            return CustomCircleAvatar(foodIcons: foodIcons);
          })),
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}

class ServiceAndViewAll extends StatelessWidget {
  const ServiceAndViewAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style:
                  gfontsubtitlefont(cl: const Color.fromARGB(255, 59, 58, 58)),
            ),
          ),
        ],
      ),
    );
  }
}

class Location extends StatelessWidget {
  const Location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: const [
          Icon(Icons.place),
          Text(
            "Yelahanka,Banglore",
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/236/236831.png"),
          ),
        ],
      ),
    );
  }
}
