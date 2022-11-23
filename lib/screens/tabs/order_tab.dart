import 'package:flutter/material.dart';
import 'package:marketdo_admin/constant/colors.dart';

import '../../widgets/text_widget.dart';

class OrderTab extends StatelessWidget {
  const OrderTab({super.key});

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
              BoldText(
                  label: '       Customer Orders',
                  fontSize: 32,
                  color: primary),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/completed.png',
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Completed",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/topay.png',
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            children: const [
                              Text(
                                "To Pay",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/todeliver.png',
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            children: const [
                              Text(
                                "To Deliver",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
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
                                label: 'Buyer',
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
                                  label: 'John Doe',
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
