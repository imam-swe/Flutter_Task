import 'package:flutter/material.dart';
import 'package:qtec_task_product_details/screens/product_details.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith<double>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) return 16;
                  return 1;
                }),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetails()),
                );
              },
              child: const Text('Product Details...'),
            ),
          ],
        ),
      ),
    );
  }
}
