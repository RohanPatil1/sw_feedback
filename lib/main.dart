import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedBackPage(),
    );
  }
}

class FeedBackPage extends StatefulWidget {
  @override
  _FeedBackPageState createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  //OnSubmit Click, rating will have the user's star rating
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Color(0xff0f3f8c)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
        ),
        AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.keyboard_backspace,
                color: Colors.white,
              ),
              onPressed: null),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Rate Us",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Quicksand",
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 0,
          right: 0,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/logo.png",
                width: 200.0,
                height: 150.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Text(
                  "We Would Like To\n Hear From You!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Quicksand",
                      fontSize: 28.0,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 24.0),
                child: SmoothStarRating(
                    allowHalfRating: false,
                    onRatingChanged: (v) {
                      rating = v;
                      setState(() {});
                    },
                    starCount: 5,
                    rating: rating,
                    size: 55.0,
                    color: Colors.yellow,
                    borderColor: Colors.yellow,
                    spacing: 0.6),
              ),
              Container(
                width: 140.0,
                height: 60.0,
                child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Quicksand"),
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              )
            ],
          ),
        ),
      ],
    );
    ;
  }
}
