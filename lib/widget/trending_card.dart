import 'package:flutter/material.dart';

class Trending_Card extends StatelessWidget {
  final String img, title, price;
  const Trending_Card({
    super.key,
    required this.img,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              img,
            ),
          ),
        ),

        Positioned(
          top: 0,
          bottom: 4,
          left: 120,
          right: 0,

          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),

              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        "4 nights * 5 days",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
