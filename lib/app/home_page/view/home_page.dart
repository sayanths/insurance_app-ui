import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: const [
                Icon(Icons.navigation),
                Text("Location not updated"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
