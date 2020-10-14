
import 'package:flutter/material.dart';
import 'package:flutter_fare/TextStyles.dart';
import 'package:flutter_fare/predictedFare.dart';

class Input extends StatelessWidget {
  final String distance;
  final String time;

  const Input({Key key, this.distance, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('The prediction of fare you want for ↓↓'),
        ),
        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            height: 200,
            child: Image.asset("assets/images/r.png"),
          ),
              Text("Total distance travelled :$distance",style: kBody1B,),
              SizedBox(height: 30,),
              Text("Approx time to reach :$time",style: kBody1B),
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
                          builder: (context) => Predicted(),
                        ));
                  },
                ),
              )

            ],
          ),
        )
      ,
    );
  }
}
