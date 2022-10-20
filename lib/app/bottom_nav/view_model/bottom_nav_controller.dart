import 'package:banglore_assignement/app/home_page/view/home_page.dart';
import 'package:banglore_assignement/app/navigation_page/view/navigation_page.dart';
import 'package:banglore_assignement/app/offer_page/view/offer_page.dart';
import 'package:banglore_assignement/app/profile/view/profile_page.dart';
import 'package:banglore_assignement/app/support_page/view/support_page.dart';
import 'package:get/get.dart';

class BottomNNavController extends GetxController {
  int pageIndex = 0;
  onClick(int updatedPageIndex) {
    pageIndex = updatedPageIndex;
    update();
  }

  final pages = [
    const HomePage(),
    const OfferPage(),
    const NavigationPage(),
    const SupportPage(),
    const ProfilePage(),
  ];
}
