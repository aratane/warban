// Package Flutter or any
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

// Package lib
import 'package:warban/bottom/bottomNavBar.dart';
import 'package:warban/menu/detailPage.dart';
import 'package:warban/utils/foodDummy.dart';

// Package Widget

final souvenir = Souvenir();

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavBar()));
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
          ),
        ],
      ),
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
                "Menu Souvenir Di Warban",
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
                        souvenir.souvenir[index],
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
                  itemCount: souvenir.souvenirName.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  img: souvenir.souvenirImages[index],
                                  name: souvenir.souvenirName[index],
                                  price: souvenir.souvenirPrice[index],
                                  desc: souvenir.souvenirDesc[index])),
                        );
                      },
                      child: Hero(
                        tag: souvenir.souvenirImages[index],
                        child: Container(
                          width: 280,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image:
                                    AssetImage(souvenir.souvenirImages[index]),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: FavoriteButton(
                                    iconSize: 55,
                                    iconDisabledColor: Colors.black,
                                    valueChanged: (isFavorite) {
                                      print('Is Favorite : $isFavorite');
                                    },
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
                                    "${"Rp. " + souvenir.souvenirPrice[index]}.000",
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
                                    souvenir.souvenirName[index],
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
}
