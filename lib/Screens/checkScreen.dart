// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/cart.dart';

class checkOut extends StatelessWidget {
  const checkOut({super.key});

  @override
  Widget build(BuildContext context) {
    final myClass = Provider.of<cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Check Screen'),
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
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return checkOut();
                    }));
                  },
                  child: Icon(Icons.shopping_cart)),
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
      body: Column(
        children: [
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: myClass.selectedProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                            radius: 25,
                            child: Image.asset(
                                myClass.selectedProducts[index].image)),
                        title: Text(
                          myClass.selectedProducts[index].name,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue),
                        ),
                        subtitle: Text(
                            '${myClass.selectedProducts[index].price}\$ - ${myClass.selectedProducts[index].location}'),
                        trailing: IconButton(
                            onPressed: () {
                              myClass.delete(myClass.selectedProducts[index]);
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            height: 45,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: (context),
                    builder: (context) {
                      return AlertDialog(
                        content: Text('are you want pay ?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                showDialog(
                                    context: (context),
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Successful process ',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                            Text('Rating app '),
                                            Row(
                                              children: [
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
                                                  color: const Color.fromARGB(
                                                      255, 189, 189, 188),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Go',
                                                      style: TextStyle(
                                                          color: Colors.blue),
                                                    )),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('Cancel',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.blue)))
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Text('Yes')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('No')),
                        ],
                      );
                    });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.blueGrey)),
              child: Text(
                'Pay  ${myClass.priceProduct}\$',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
