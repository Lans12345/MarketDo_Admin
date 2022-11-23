import 'package:flutter/material.dart';
import 'package:marketdo_admin/widgets/text_widget.dart';

import '../../constant/colors.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(label: '       Dashboard', fontSize: 32, color: primary),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
