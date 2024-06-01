import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorship/class_three/package_migrate/svg.dart';

import 'class_one/ui_structure_class.dart';
import 'class_three/package_class.dart';
import 'class_two/reuseable_components.dart';

class ClassList extends StatelessWidget {
  const ClassList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Class List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          SvgPicture.asset(
            'assets/svgs/top_pattern.svg',
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
          ),
          itemList(
            title: 'Class One',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const UIStructureClass()),
              );
            },
          ),
          itemList(
            title: 'Class Two',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Reuseables()),
              );
            },
          ),
          itemList(
            title: 'Class Three',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PackageClass()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget itemList({required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const Divider(),
          Text(title),
          const Divider(),
        ],
      ),
    );
  }
}
