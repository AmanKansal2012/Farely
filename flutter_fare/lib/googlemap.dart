import 'package:flutter/material.dart';
import 'package:flutter_fare/TextStyles.dart';
import 'package:flutter_fare/input.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Where you want to go?'),
      ),
      body: const WebView(
        initialUrl: 'https://www.google.com/maps/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.chrome_reader_mode),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: PlaceYourChildWidget(context),
                    ));
              });

        },
      ),
    );
  }
}

PlaceYourChildWidget(BuildContext context) {
  final TextEditingController _distance=TextEditingController();
  final TextEditingController _time=TextEditingController();
  return Container(
    height: 250,
      decoration: new BoxDecoration(
          color: Colors.black,
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0))),

      child: Center(
          child: Container(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 27.0,
                    vertical: 16.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      new TextFormField(
                        controller: _distance,
                        style: new TextStyle(fontSize: 18.0, color: Colors.white),
                        decoration: new InputDecoration(
                          labelText: "Enter distance (in km)",
                          hintText: "174 or 80.5",
                         hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                            ),
                          ),
                          focusedBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            ),
                          ),

                        ),


                        keyboardType: TextInputType.number,
                        //controller: filterTextFieldData,
                      ),
                      new TextFormField(
                        controller: _time,
                        style: new TextStyle(fontSize: 18.0, color: Colors.white),
                        decoration: new InputDecoration(
                          labelText: "Enter time",
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "input 3:10 if 3 hour 10 minutes is duration ",
                          enabledBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: new UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        //controller: filterTextFieldData,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          elevation: 2,
                          color: Colors.lightBlueAccent,
                          child: Text("Next",style: kLargeButtonTextStyle,),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Input(distance: _distance.text,time: _time.text,),
                                ));
                          },
                        ),
                      )
                    ],
                  ),
              ))
      ));
}
