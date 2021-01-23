
import 'package:flutter/material.dart';


class Signup extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  Signupbody();
  }
}

class Signupbody extends State<Signup> {


  int sel;
  void initState(){
    super.initState();
    sel=0;
  }
  setSelectedRadio (int val){
    setState(() {
      sel=val;
    });
  }
  TextEditingController studentName = new TextEditingController();
  TextEditingController studentDetail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)

        .textTheme
        .title;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Text("Create New Account"),


      ),
      body:
      Padding(
      padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15, right: 15),

                child: Container(


                  child: TextField(

                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[100],
                      hintText: 'First Name',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15, right: 15),

                child: Container(


                 child: TextField(

                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[100],
                      hintText: 'Last Name',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
              ),
              Padding(

                padding: EdgeInsets.only(top: 15.0, bottom: 15.0,right: 200),

                child: Center(
                  child: Container(

                    child: RichText(
                      text: TextSpan(

                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Gender:',
                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              decorationStyle: TextDecorationStyle.wavy,
                            ),

                          ),

                        ],
                      ),




                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0),

                child: Container(



                  child: Row(

                    children: <Widget>[
                      Radio(value: 1, groupValue: sel,
                        activeColor: Colors.orange,

                        onChanged: (val){
                          setSelectedRadio(val);
                        },
                      ),
                      Text("Male  |"),


                      Radio(value: 3, groupValue: sel  ,
                        activeColor: Colors.orange,
                        focusColor: Colors.orange,
                        hoverColor: Colors.orange,

                        onChanged: (val){
                          setSelectedRadio(val);
                        },
                      ),
                      Text("Female |"),


                      Radio(value: 4, groupValue: sel,
                        activeColor: Colors.orange,
                        focusColor: Colors.orange,
                        hoverColor: Colors.orange,

                        onChanged: (val){
                          setSelectedRadio(val);
                        },
                      ),
                      Text("Other")

                    ],


                  ),

                ),
              ),
              Padding(

                padding: EdgeInsets.only(top: 15.0, bottom: 15.0,right: 200),

                child: Center(
                  child: Container(

                    child: RichText(
                      text: TextSpan(

                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'I am A',
                            style: TextStyle(

                              fontWeight: FontWeight.bold,

                              decorationStyle: TextDecorationStyle.wavy,
                            ),

                          ),

                        ],
                      ),




                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0),

                child: Container(



                  child: Row(

                    children: <Widget>[
                      Radio(value: 4, groupValue: sel,
                        activeColor: Colors.orange,

                        onChanged: (val){
                          setSelectedRadio(val);
                        },
                      ),
                      Text("Customer |"),


                      Radio(value: 5, groupValue: sel  ,
                        activeColor: Colors.orange,
                        focusColor: Colors.orange,
                        hoverColor: Colors.orange,

                        onChanged: (val){
                          setSelectedRadio(val);
                        },
                      ),
                      Text("Company"),



                    ],


                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15, right: 15),

                child: Container(


                  child: TextField(

                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[100],
                      hintText: 'Email',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15, right: 15),

                child: Container(


                  child: TextField(

                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[100],
                      hintText: 'Phone Number',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15, right: 15),

                child: Container(



                  child: TextField(

                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[100],
                      hintText: 'Password',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15, right: 15),

                child: Container(


                  child: TextField(

                    autofocus: false,
                    style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[100],
                      hintText: 'Password RE-Enter',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0,left: 15,right: 15),
                  child: Row (
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.orange,
                          textColor: Colors.white,
                          child: Text(

                            'Submit', textScaleFactor: 1.5,

                          ),

                          onPressed: () {
                            setState(() {
                              debugPrint("User Click SAVED");
                            });
                          },

                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                        ),

                      ),

                    ],


                  )
              ),

            ]
        ),
    ),

    );



  }
}