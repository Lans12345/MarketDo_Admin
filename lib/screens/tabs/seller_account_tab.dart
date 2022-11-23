import 'package:flutter/material.dart';
import 'package:marketdo_admin/constant/colors.dart';

import '../../widgets/text_widget.dart';

class SellerAccountTab extends StatelessWidget {
  const SellerAccountTab({super.key});

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
              BoldText(label: '       Accounts', fontSize: 32, color: primary),
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
                                label: 'Profile',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Name',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Email',
                                fontSize: 16,
                                color: Colors.black)),
                        DataColumn(
                            label: NormalText(
                                label: 'Contact Number',
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
                            const DataCell(
                              CircleAvatar(
                                minRadius: 20,
                                maxRadius: 20,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            DataCell(
                              NormalText(
                                  label: 'Lance Olana',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            DataCell(
                              NormalText(
                                  label: 'lans@gmail.com',
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            DataCell(
                              NormalText(
                                  label: '09090104355',
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
