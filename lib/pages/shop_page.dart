import 'package:coffeshop/models/coffe.dart';
import 'package:coffeshop/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Text(
                      "How would you like your coffee?",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 25),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeShop.length,
                            itemBuilder: (context, index) {
                              //get individual coffe
                              Coffe eachCoffe = value.coffeShop[index];

                              //return the title for this coffee
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(12)),
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 10),
                                child: ListTile(
                                  title: Text(eachCoffe.name),
                                  subtitle: Text(eachCoffe.price),
                                  leading: Image.asset(eachCoffe.imagePath),
                                ),
                              );
                            })),
                  ],
                ),
              ),
            ));
  }
}
