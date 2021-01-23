import 'package:flutter/material.dart';
import 'package:tpomarket2020/componets/prodaitels.dart';

import 'package:tpomarket2020/screens/test.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",

      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}





class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("HERO1"),
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.push(context,new MaterialPageRoute(builder: (context)=> new ProductDetails(
                product_detail_name: prod_name,
                product_detail_newprice: prod_price,
                product_detail_oldprice: prod_old_price,
                product_detail_picture: prod_pricture,

              ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(
                        children: <Widget>[
                          Expanded(child: new Text("prod_name"),
                          ),
                          new Text("\$${"prod_price"}",style: TextStyle(color: Colors.red),)
                        ],
                      )
                  ),
                  child: Image.asset("",
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
