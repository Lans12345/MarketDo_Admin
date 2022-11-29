import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:marketdo_admin/constant/colors.dart';

import '../../widgets/text_widget.dart';

class OrderTab extends StatefulWidget {
  const OrderTab({super.key});

  @override
  State<OrderTab> createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  @override
  void initState() {
    super.initState();

    getData();
    getData2();
    getData3();
  }

  late int total1 = 0;

  getData() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('status', isEqualTo: 'To Deliver');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total1 = querySnapshot.size;
        }
      });
    }
  }

  late int total2 = 0;

  getData2() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('status', isEqualTo: 'To Pay');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total2 = querySnapshot.size;
        }
      });
    }
  }

  late int total3 = 0;

  getData3() async {
    // Use provider
    var collection = FirebaseFirestore.instance
        .collection('Purchases')
        .where('status', isEqualTo: 'History');

    var querySnapshot = await collection.get();
    if (mounted) {
      setState(() {
        for (var queryDocumentSnapshot in querySnapshot.docs) {
          Map<String, dynamic> data = queryDocumentSnapshot.data();
          total3 = querySnapshot.size;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: SingleChildScrollView(
          child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Purchases')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  print(snapshot.error);
                  return const Center(child: Text('Error'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  print('waiting');
                  return const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                        child: CircularProgressIndicator(
                      color: Colors.black,
                    )),
                  );
                }

                final data = snapshot.requireData;
                return Column(
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
                                  children: [
                                    const Text(
                                      "Completed",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      total3.toString(),
                                      style: const TextStyle(
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
                                  children: [
                                    const Text(
                                      "To Pay",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      total2.toString(),
                                      style: const TextStyle(
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
                                  children: [
                                    const Text(
                                      "To Deliver",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      total1.toString(),
                                      style: const TextStyle(
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
                              for (int i = 0; i < snapshot.data!.size; i++)
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
                                    child: Image.network(
                                      data.docs[i]['imageURL'],
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                                  DataCell(
                                    NormalText(
                                        label: data.docs[i]['productPrice'],
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                  DataCell(
                                    NormalText(
                                        label: data.docs[i]['productName'],
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                  DataCell(
                                    NormalText(
                                        label: data.docs[i]['seller'],
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                  DataCell(
                                    NormalText(
                                        label: data.docs[i]['name'],
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
                );
              }),
        ),
      ),
    );
  }
}
