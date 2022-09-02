import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:warban/menu/menuPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Warban Food App',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            iconSize: 20,
          ),
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 39,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Center(
                        child: Text(
                          'Kopi',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Center(
                        child: Text(
                          'Teh',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Center(
                        child: Text(
                          'Surabi',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 3.2 / 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Center(
                        child: Text(
                          'Batagor',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            kopi(context, "kopi", "assets/images/kopi.jpg"),
            teh(context, "teh", "assets/images/teh.jpg"),
            surabi(context, "surabi", "assets/images/surabi.jpg"),
            batagor(context, "batagor", "assets/images/batagor.jpg"),
          ],
        ),
      ),
    );
  }
  Widget kopi(context, tag, image) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MenuPage()));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kopi',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'WARBAN',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: FavoriteButton(
                        iconSize: 35,
                        iconDisabledColor: Colors.black,
                        valueChanged: (isFavorite) {
                          print('Is Favorite : $isFavorite');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget teh(context, tag, image) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Teh',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'WARBAN',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: FavoriteButton(
                        iconSize: 35,
                        iconDisabledColor: Colors.black,
                        valueChanged: (isFavorite) {
                          print('Is Favorite : $isFavorite');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget surabi(context, tag, image) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Surabi',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'WARBAN',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: FavoriteButton(
                        iconSize: 35,
                        iconDisabledColor: Colors.black,
                        valueChanged: (isFavorite) {
                          print('Is Favorite : $isFavorite');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget batagor(context, tag, image) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Batagor',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'WARBAN',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: FavoriteButton(
                        iconSize: 35,
                        iconDisabledColor: Colors.black,
                        valueChanged: (isFavorite) {
                          print('Is Favorite : $isFavorite');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

