import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/components/my_button.dart';
import 'package:flutter_sushi_app/models/food.dart';
import 'package:flutter_sushi_app/models/shop.dart';
import 'package:flutter_sushi_app/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          foregroundColor: Colors.white,
          elevation: 0,
          title: const Text("My Cart"),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: value.cart.isEmpty
            ? Container(
                padding: const EdgeInsets.all(25),
                alignment: Alignment.center,
                child: const Text(
                  'No item added to cart',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.cart.length,
                      itemBuilder: (context, index) {
                        final Food food = value.cart[index];
                        final String foodName = food.name;
                        final String foodPrice = food.price;

                        return Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            title: Text(
                              foodName,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'Rp. $foodPrice',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              onPressed: () => value.removeCart(
                                  food), //removeFromCart(food, context),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: MyButton(
                      text: "Pay Now",
                      onTap: () {},
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
