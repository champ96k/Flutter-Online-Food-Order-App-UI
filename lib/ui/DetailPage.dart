import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final title, price, img;
  DetailPage(this.title, this.price, this.img);
  @override
  _DetailPageState createState() =>
      _DetailPageState(this.title, this.price, this.img);
}

class _DetailPageState extends State<DetailPage> {
  var title, price, img;
  _DetailPageState(this.title, this.price, this.img);

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
                            "₹ 499",
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 26.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Color(0xffFF7E68),
                  radius: 22,
                  child: IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(
            height: 28.0,
          ),
          Container(
            height: 280.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    height: 240,
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(img),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {}),
                        ),
                        Card(
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  price,
                  style: TextStyle(
                    fontSize: 38.0,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 82,
                width: 285.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  color: Colors.redAccent,
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.remove),
                                color: Colors.redAccent,
                                onPressed: () {
                                  if (count > 0) {
                                    setState(() {
                                      count--;
                                    });
                                  }
                                }),
                            Text(
                              "$count",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                icon: Icon(Icons.add),
                                color: Colors.redAccent,
                                onPressed: () {
                                  if (count >= 0) {
                                    setState(() {
                                      count++;
                                    });
                                  }
                                }),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Add to Card",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 28.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "FEATURED",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.75,
              ),
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          customMenuItem("assets/taco.png", "Sweet Cheese", "112"),
          customMenuItem("assets/sandwich.png", "Sweet Sandwich", "248"),
          customMenuItem("assets/popcorn.png", "Sweet Popcorn", "420"),
          customMenuItem("assets/sandwich.png", "Sweet Sandwich", "12"),
        ],
      ),
    );
  }
}
