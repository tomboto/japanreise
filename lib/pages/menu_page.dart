import "package:flutter/material.dart";
import "package:japanreise/components/button.dart";
import "package:japanreise/components/event_tile.dart";

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    List<EventTile> eventList = [
      EventTile(
        name: "Mitama Matsuri Festival",
        price: "EUR 49,00",
        imagePath:
            "/Users/thomasbotond/Dev/Flutter/japanreise/lib/images/japan7.png",
        rating: "5,0",
        details: () => Navigator.pushNamed(context, "/festivalpage"),
      ),
      EventTile(
        name: "Noodle Haromy Japan",
        price: "EUR 18,00",
        imagePath:
            "/Users/thomasbotond/Dev/Flutter/japanreise/lib/images/japan3.png",
        rating: "4,0",
        details: () => Navigator.pushNamed(context, "/noodleharomypage"),
      ),
      EventTile(
        name: "Mount Fuji Tour",
        price: "EUR 69,00",
        imagePath:
            "/Users/thomasbotond/Dev/Flutter/japanreise/lib/images/japan6.png",
        rating: "4,3",
        details: () => Navigator.pushNamed(context, "/mountfujipage"),
      ),
    ];

    return Scaffold(
      backgroundColor: _isDarkMode
          ? const Color.fromARGB(255, 0, 0, 0)
          : const Color.fromARGB(255, 215, 165, 187),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "J A P A N",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            icon: _isDarkMode
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(context, "/cartpage"),
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: const Color(0xffffb46c),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "32% Nachlass",
                        style: TextStyle(fontSize: 22),
                      ),
                      const SizedBox(height: 15),
                      MyButton(
                        mytext: "Buchen",
                        event: () {},
                      )
                    ],
                  ),
                  Image.asset(
                    "/Users/thomasbotond/Dev/Flutter/japanreise/lib/images/japan1.png",
                    width: 120,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Suche Event",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Events",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => eventList[index],
              itemCount: eventList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Derzeit beliebt",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 185, 160),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "/Users/thomasbotond/Dev/Flutter/japanreise/lib/images/japan2.png",
                  width: 120,
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kimono Kultur",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "EUR 49,00",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
