import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.name,
    required this.bigImage,
    required this.infoText,
  });

  final String name;
  final String bigImage;
  final String infoText;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 85, 85),
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: const Color.fromARGB(255, 40, 85, 85),
          leading: IconButton(
            color: Colors.white,
            iconSize: 30,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              color: Colors.white,
              iconSize: 30,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 150,
              child: Container(
                width: screenWidth * 0.65,
                height: screenHeight * 0.53,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 31, 73, 73),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.45,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: screenWidth * 0.7,
                            child: ClipRect(
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'lib/assets/images/$bigImage.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'XX',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Especies',
                              style: TextStyle(
                                color: Color.fromARGB(255, 147, 170, 170),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    infoText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 31, 73, 73),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:
                            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: Colors.white)),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 246, 121, 19),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
