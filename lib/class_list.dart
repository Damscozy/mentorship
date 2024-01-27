import 'package:flutter/material.dart';

import 'class_one/ui_structure_class.dart';
import 'class_two/reuseable_components.dart';

class ClassList extends StatelessWidget {
  const ClassList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
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
                MaterialPageRoute(builder: (_) => const UIStructureClass()),
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
