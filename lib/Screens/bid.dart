import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Components/my_textfield.dart';

class Bid extends StatelessWidget {
  final String docId;
  final _bidPrice = TextEditingController();

  Bid({super.key, required this.docId});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('products')
          .doc(docId)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            final documentData = snapshot.data!.data() as Map<String, dynamic>;
            String productName = documentData['Product Name'];
            String minBidPrice = documentData['Minimum Bid Price'];
            String description = documentData['Product Description'];
            String endDate = documentData['Date'];
            String imageUrl = documentData['Image Url'];
            return Scaffold(
              appBar: AppBar(
                title: const Text('Bid on item'),
                centerTitle: true,
                backgroundColor: Colors.grey[300],
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 4 / 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(imageUrl),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            productName,
                            style: const TextStyle(
                              fontFamily: 'SourceSans3',
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            description,
                            style: const TextStyle(
                              fontFamily: 'SourceSans3',
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Minimum Bid Price: $minBidPrice tk',
                            style: const TextStyle(
                              color: Colors.red,
                              fontFamily: 'SourceSans3',
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Bid ends: $endDate',
                            style: const TextStyle(
                              fontFamily: 'SourceSans3',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyTextField(
                      controller: _bidPrice,
                      hinText: 'Bid price',
                      obsecureText: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.fromLTRB(140, 10, 140, 10),
                              backgroundColor: Colors.black,
                            ),
                            child: const Text(
                              'Bid',
                              style: TextStyle(
                                fontFamily: 'SourceSans3',
                                fontSize: 20,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            );
          } else {
            return const Scaffold(body: Center(child: CircularProgressIndicator())); // Handle no data case
          }
        } else {
          return const Scaffold(body: Center(child: CircularProgressIndicator())); // Handle connection state cases
        }
      },
    );
  }
}
