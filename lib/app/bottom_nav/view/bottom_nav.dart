import 'package:banglore_assignement/app/bottom_nav/view_model/bottom_nav_controller.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/et.dart';

class BottomNavigationMobile extends StatelessWidget {
  const BottomNavigationMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNNavController());
    return Scaffold(
      backgroundColor: white,
      body: GetBuilder<BottomNNavController>(
        builder: (context) {
          return context.pages[context.pageIndex];
        },
      ),
      bottomNavigationBar: GetBuilder<BottomNNavController>(builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: BottomNavigationBar(
            selectedItemColor: yellow,
            unselectedItemColor: white,
            backgroundColor: black,
            currentIndex: controller.pageIndex,
            onTap: ((newIndex) {
              controller.onClick(newIndex);
            }),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Iconify(Bxs.offer,color: white,), label: 'Offers'),
              BottomNavigationBarItem(
                  icon: Iconify(Et.compass,color: white,), label: 'compass'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
            ],
          ),
        );
      }),
    );
  }
}
