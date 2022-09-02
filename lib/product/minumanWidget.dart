import 'package:flutter/material.dart';
import '../menu/detailPage.dart';
import '../utils/foodDummy.dart';
import 'makananWidget.dart';

final drink = MyDrink();

Widget minuman(context) {
  double h = MediaQuery.of(context).size.height;
  return Scaffold(
    body: SafeArea(
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(
            height: h * 0.03,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Menu Makanan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto-Bold",
              ),
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          SizedBox(
            height: h * 0.08,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1),
                    ),
                    child: Center(
                        child: Text(
                          food.food[index],
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: "Roboto-Regular",
                              fontWeight: FontWeight.bold),
                        )),
                  );
                }),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Tersedia",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto-Bold",
              ),
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          SizedBox(
            height: h * 0.63,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: food.names.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                img: food.foodImages[index],
                                name: food.names[index],
                                price: food.price[index],
                                desc: food.desc[index])),
                      );
                    },
                    child: Hero(
                      tag: food.foodImages[index],
                      child: Container(
                        width: 250,
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(food.foodImages[index]),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken)),
                        ),
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.35,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "${"Rp. " + food.price[index]}.000",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto-Bold"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(bottom: 8, left: 8),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  food.names[index],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto-Regular"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    ),
  );
}