import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tpomarket2020/componets/myctrl.dart';

myctrl ctrl= new myctrl();
List<String> data;
class HorizontalList extends StatelessWidget {

  List catp;
  myctrl ctrl=new myctrl();

  @override
  Widget build(BuildContext context) {
get();
    return ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,

          itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(15),
              child: Text(data[index].toString(),style: TextStyle(backgroundColor: Colors.pinkAccent),),);
          });
  }
}

class Category extends StatelessWidget {

  final String image_caption;

  Category({ this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(

            title: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }

}
Future<void> get() async {
  data = await  ctrl.gitdatacat();
  ctrl.list=data;

}
