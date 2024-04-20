import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mentorship/class_three/package_migrate/svg.dart';
// import 'package:flutter_svg/svg.dart';

class PackageClass extends StatefulWidget {
  const PackageClass({super.key});

  @override
  State<PackageClass> createState() => _PackageClassState();
}

class _PackageClassState extends State<PackageClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Class'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is a package class'),
            Animate(
              autoPlay: true,
              delay: const Duration(milliseconds: 500),
              effects: const [
                FadeEffect(),
                ScaleEffect(),
              ],
              child: const Text("Hello World!"),
            ),
            // Image.asset('assets/class1_ui.png'),
            SvgPicture.asset(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              'assets/svgs/success_pattern.svg',
              // colorFilter: const ColorFilter.mode(
              //   Colors.black,
              //   BlendMode.srcIn,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
