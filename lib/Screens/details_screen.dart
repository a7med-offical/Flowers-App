// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, camel_case_types

import 'package:app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/cart.dart';

// import '../model/model.dart';
// import '../model/model.dart';

class detailsScreen extends StatefulWidget {
  detailsScreen({super.key, required this.data});

  Item data;

  @override
  State<detailsScreen> createState() => _detailsScreenState();
}

class _detailsScreenState extends State<detailsScreen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    final myClass = Provider.of<cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 19.0),
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Text(
                        '${myClass.selectedProducts.length}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Icon(Icons.shopping_cart),
              Padding(
                padding: const EdgeInsets.only(right: 3.0, left: 4),
                child: Text(
                  '${myClass.priceProduct}\$',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage(widget.data.image)), //Statful widget
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('${widget.data.price}\$',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 38,
                            height: 18,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 3.0, right: 2, bottom: 2),
                              child: Text('New',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color.fromARGB(255, 189, 189, 188),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(widget.data.location,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                          textAlign: TextAlign.start,
                          'Details :',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      maxLines: isShowMore ? 5 : 7,
                      'Flower symbols are copy and paste text symbols that can be used in any desktop, web, or mobile applications. This table explains the meaningused in any desktop, web, or mobile applications. This table explains the meaning of every flower symbol. Just click on the symbol to get more information such as flower symbol unicode, download flower emoji as a png image at different sizes, or copy flower symbol to clipboard then paste into your favorite application Flower symbols are copy and ,Flower symbols are copy and paste text symbols that can be used in any desktop, web, or mobile applications. This table explains the meaningused in any desktop, web, or mobile applications. This table explains the meaning of every flower symbol. Just click on the symbol to get more information such as flower symbol unicode, download flower emoji as a png image at different sizes, or copy flower symbol to clipboard then paste into your favorite application Flower symbols are copyFlower symbols are copy and paste text symbols that can be used in any desktop, web, or mobile applications. This table explains the meaningused in any desktop, web, or mobile applications. This table explains the meaning of every flower symbol. Just click on the symbol to get more information such as flower symbol unicode, download flower emoji as a png image at different sizes, or copy flower symbol to clipboard then paste into your favorite application Flower symbols are copy and paste text symbols that can be used and paste text symbols that can be usedpaste text symbols that can be used',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isShowMore = !isShowMore;
                        });
                      },
                      child: Text(
                        isShowMore ? 'show more..' : 'show less',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            overflow: TextOverflow.fade),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
