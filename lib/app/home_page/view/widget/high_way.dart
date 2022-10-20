import 'package:banglore_assignement/app/utiles/fonts.dart';
import 'package:flutter/material.dart';

class OderHighWayFood extends StatelessWidget {
  final String title;
  final IconData icon;
  const OderHighWayFood({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Container(
              height: 80,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 243, 243, 96),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  Text(
                    title,
                    style: gfontsubtitlefont(
                        cl: Colors.black, fw: FontWeight.bold),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
