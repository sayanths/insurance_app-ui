import 'package:banglore_assignement/app/home_page/view/widget/home_widgets.dart';
import 'package:banglore_assignement/app/home_page/view/widget/list.dart';
import 'package:banglore_assignement/app/utiles/colors.dart';
import 'package:banglore_assignement/app/utiles/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenPage extends StatelessWidget {
  const FullScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: black),
        ),
        backgroundColor: const Color.fromARGB(255, 243, 239, 211),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 243, 239, 211),
      body: SafeArea(
        child: ListView(
          children: [
            const CustomImageSlider(),
            height10,
            Container(
              height: size.height / 1,
              width: size.width,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 2),
                child: Wrap(
                  children: List.generate(textTitle.length, (index) {
                    final data = textTitle[index];
                    final subTitle = textSubTitle[index];
                    final icons = iconDatas[index];
                    final colorsFull = fullColor[index];
                    return CustomGlassContainer(
                      data: data,
                      subTitle: subTitle,
                      icons: icons,
                      iconColor: colorsFull,
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
