import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ar/model/product.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            MasonryGridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context,index){
                  final heights= [200,275,225];
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(
                        '/product',
                        arguments: products[index],
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: heights[index%3].toDouble(),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).dividerColor,
                          width: 0,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.0),
                              child: Image.asset(
                                products[index].imgPath,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            products[index].name,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            products[index].price.toString(),
                            //style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                })

          ],
        ),
      ),
    );
  }
}
