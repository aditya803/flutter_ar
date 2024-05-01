import 'package:flutter/material.dart';
import 'package:flutter_ar/model/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      ...Product.products,
      ...Product.products,
    ];
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 8,)
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                  text: TextSpan(
                    text: 'Find your \n',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: 'Products',
                          style: Theme.of(context).textTheme.displayMedium,
                      )]
                  )),
            ),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16.0,),
                  ...['Trending','Most Recent','Popular', 'Newest']
                      .map((e) => Container(
                        margin: EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                            label: Text(e),
                            selected: 'Training'==e),
                  ))
                ],
              ),
            ),

            //Grid

          ],
        ),
      ),
    );
  }
}
