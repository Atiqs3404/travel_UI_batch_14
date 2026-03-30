import 'package:flutter/material.dart';
import 'package:travel_app/widget/title_text.dart';
import 'package:travel_app/widget/trending_card.dart';

class TravelHome extends StatelessWidget {
  const TravelHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> destinationList = [
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1718035557075-5111d9d906d2?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Paris",
      },
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1680339680335-7e3b8572fc00?q=80&w=1075&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Maldives",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1489516408517-0c0a15662682?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Dubai",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1604999333679-b86d54738315?q=80&w=1025&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Bali",
      },
    ];

    List<Map<String, String>> trendingList = [
      {
        "img":
            "https://images.unsplash.com/photo-1699726258869-36dff6247fd3?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Romantic Paris Gateway",
        "price": "\$799",
      },
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1668883189152-d771c402c385?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Bali Adventure Tour",
        "price": "\$599",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1720810757171-ff8e697a9f13?q=80&w=1031&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Nepal Tour",
        "price": "\$599",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1647729008415-a6f35619c736?q=80&w=1032&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Maldive Tour",
        "price": "\$599",
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero section
              Stack(
                children: [
                  Image.network(
                    "https://plus.unsplash.com/premium_photo-1661964071015-d97428970584?q=80&w=1020&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  Container(height: 250, color: Colors.black.withOpacity(0.5)),

                  Positioned(
                    bottom: 100,
                    left: 20,

                    child: Text(
                      "Explore the World",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 30,
                    left: 20,
                    right: 80,

                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Search destination...',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Destination Section
              // Destination title
              title_text(text: "Top Destinations"),

              // Destination Images
              SizedBox(
                height: 270,
                width: double.infinity,

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10,
                  ),

                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 190, // max tile width
                      mainAxisExtent: 120, // fixed tile height
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final city = destinationList[index];

                      return Container(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(15),
                              child: Image.network(
                                width: double.infinity,
                                fit: BoxFit.cover,
                                city['img'].toString(),
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              height: 250,
                            ),

                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: Text(
                                city['name'].toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Trending Section
              // Trending title
              title_text(text: "Trending Packages"),

              // Trending Options
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Trending_Card(
                          img:
                              "https://images.unsplash.com/photo-1699726258869-36dff6247fd3?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          title: "Romantic Paris Gateway",
                          price: "\$799",
                        ),
                        SizedBox(height: 5),
                        Trending_Card(
                          img:
                              "https://images.unsplash.com/photo-1699726258869-36dff6247fd3?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          title: "Romantic Paris Gateway",
                          price: "\$799",
                        ),
                        SizedBox(height: 5),
                        Trending_Card(
                          img:
                              "https://images.unsplash.com/photo-1699726258869-36dff6247fd3?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          title: "Romantic Paris Gateway",
                          price: "\$799",
                        ),
                        SizedBox(height: 5),
                        Trending_Card(
                          img:
                              "https://images.unsplash.com/photo-1699726258869-36dff6247fd3?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          title: "Romantic Paris Gateway",
                          price: "\$799",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
