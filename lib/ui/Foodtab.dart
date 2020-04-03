import 'package:flutter/material.dart';

class Foodtab extends StatefulWidget {
  @override
  _FoodtabState createState() => _FoodtabState();
}

class _FoodtabState extends State<Foodtab> {
  Widget customMenuItem(var img, var text, var price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 300.0,
            child: Row(
              children: <Widget>[
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xffFFE4E0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(fit: BoxFit.cover, image: AssetImage(img)),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          text,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0,
                            letterSpacing: 0.75,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.orange, size: 17),
                          Icon(Icons.star, color: Colors.orange, size: 17),
                          Icon(Icons.star, color: Colors.orange, size: 17),
                          Icon(Icons.star, color: Colors.orange, size: 17),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "₹ $price",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "₹ 99",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          CircleAvatar(
              radius: 24.0,
              backgroundColor: Colors.redAccent,
              child: IconButton(
                  splashColor: Colors.deepPurple,
                  icon: Icon(Icons.add),
                  color: Colors.white,
                  onPressed: () {})),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          customMenuItem("assets/hotdog.png", "Delicious hot dog", "18"),
          customMenuItem("assets/pizza.png", "Cheese Pizza", "25"),
          customMenuItem("assets/popcorn.png", "Sweet Popcorn", "420"),
          customMenuItem("assets/sandwich.png", "Sweet Sandwich", "12"),
          customMenuItem("assets/taco.png", "Sweet Cheese", "48"),
        ],
      ),
    );
  }
}
