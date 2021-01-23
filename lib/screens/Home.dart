//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tpomarket2020/componets/horizontal_listview.dart';
import 'package:tpomarket2020/componets/products.dart';
import 'package:tpomarket2020/screens/signup.dart';
import 'package:tpomarket2020/screens/test.dart';






class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
    height: 200.0,

    );
    return Scaffold(
      appBar: AppBar(
        title: Text("TPOMarket"),
        backgroundColor: Colors.red,
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){
          })

        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text("Mohammed Almasri")
              , accountEmail: Text("mohammedalmasri@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.red
              ),
            ),
            InkWell(onTap: (){},
              child:
              ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(onTap: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SignUp()));

            },
              child:
              ListTile(
                title: Text('My acount'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(onTap: (){
//              Navigator.push(context, MaterialPageRoute(builder: (context)=> new cart()));
            },
              child:
              ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(onTap: (){},
              child:
              ListTile(
                title: Text('Ctaloges'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(onTap: (){},
              child:
              ListTile(
                title: Text('Likes'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(onTap: (){},
              child:
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.indigo,),
              ),
            ),
            InkWell(onTap: (){},
              child:
              ListTile(
                title: Text('settings'),
                leading: Icon(Icons.settings),
              ),
            ),



          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),
          ),
          HorizontalList(),

          new Padding(padding: EdgeInsets.all(20.0),
          child: Text("Prodcts"),),
          Container(
            height: 320.0,
            child: Products(),
          )

        ],
      ),
    );
  }
}
