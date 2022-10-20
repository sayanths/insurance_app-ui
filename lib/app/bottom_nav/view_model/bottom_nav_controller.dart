import 'package:banglore_assignement/app/home_page/view/home_page.dart';
import 'package:get/get.dart';

class BottomNNavController extends GetxController {
  int pageIndex = 0;
  onClick(int updatedPageIndex) {
    pageIndex = updatedPageIndex;
    update();
  }

  final pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];
}