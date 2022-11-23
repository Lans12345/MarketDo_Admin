import 'package:flutter/material.dart';
import 'package:marketdo_admin/constant/colors.dart';

import '../../widgets/text_widget.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText(label: '       Products', fontSize: 32, color: primary),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      border: Border.all(color: primary, width: 2),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: DataTable(
                      // datatable widget
                      columns: [
                        // column to set the name
                        DataColumn(
                            label: NormalText(
                                label: 'No.',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Image',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Product Price',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Product Name',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Seller',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Address',
                                fontSize: 16,
                                color: Colors.black)),
                      ],

                      rows: [
                        // row to set the values
                        for (int i = 0; i < 50; i++)
                          DataRow(cells: [
                            DataCell(
                              NormalText(
                                  label: i.toString(),
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            DataCell(Container(
                              color: Colors.black,
                              height: 40,
                              width: 50,
                            )),
                            DataCell(
                              NormalText(
                                  label: '400.00php',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            DataCell(
                              NormalText(
                                  label: 'Product $i',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            DataCell(
                              NormalText(
                                  label: 'Lance Olana',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            DataCell(
                              NormalText(
                                  label: 'Impasugong Bukidnon Philippines',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          ]),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
