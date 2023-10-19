import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          restorationId: 'list',
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 0; index < 12; index++)
              const ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("root/assets/img/vansclassic_den.jpg"),
                  ),
                ),
                title: Text(
                  "Tiêu đề",
                ),
                subtitle: Text("Mô tả"),
              ),
          ],
        ),
      ),
    );
  }
}