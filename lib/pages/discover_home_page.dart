import 'package:flutter/material.dart';
import 'package:test_1/widgets/info_card_widget.dart';
import 'package:test_1/widgets/rotated_menu_widget.dart';

class DiscoverHomePage extends StatelessWidget {
  const DiscoverHomePage({super.key});

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
            icon: const Icon(Icons.menu),
            onPressed: () {},
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
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: screenWidth * 0.75,
                height: screenHeight * 0.65,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 31, 73, 73),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, right: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Our majestic world together',
                    style: TextStyle(
                      color: Color.fromARGB(255, 147, 170, 170),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Row(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              InfoCardWidget(
                                name: 'Pájaro',
                                image: 'bird',
                                bigImage: 'bird_2',
                                audio: 'bird',
                                infoText:
                                    'Los pájaros son los únicos animales con plumas, ¡y algunas especies pueden volar a más de 100 km/h! Además, usan sus cantos para hablar entre ellos o para llamar la atención de otros pájaros.',
                              ),
                              SizedBox(height: 12),
                              InfoCardWidget(
                                name: 'Gato',
                                image: 'cat',
                                bigImage: 'cat_2',
                                audio: 'cat',
                                infoText:
                                    'Los gatos pasan la mitad de su día durmiendo y son muy ágiles porque tienen un esqueleto flexible. Pueden saltar hasta seis veces su altura.',
                              ),
                              SizedBox(height: 12),
                              InfoCardWidget(
                                name: 'Vaca',
                                image: 'cow',
                                bigImage: 'cow_2',
                                audio: 'cow',
                                infoText:
                                    'Las vacas tienen cuatro estómagos que les ayudan a digerir el pasto. También tienen muy buena memoria, recuerdan caras y lugares por mucho tiempo.',
                              ),
                              SizedBox(height: 12),
                              InfoCardWidget(
                                name: 'Perro',
                                image: 'dog',
                                bigImage: 'dog_2',
                                audio: 'dog',
                                infoText:
                                    'Los perros tienen un súper olfato, ¡pueden oler hasta 100.000 veces mejor que los humanos! Por eso, muchas veces ayudan a encontrar cosas o personas.',
                              ),
                              SizedBox(height: 12),
                              InfoCardWidget(
                                name: 'Caballo',
                                image: 'horse',
                                bigImage: 'horse_2',
                                audio: 'horse',
                                infoText:
                                    'Los caballos pueden dormir de pie gracias a sus patas fuertes, y tienen una excelente memoria. Pueden reconocer amigos humanos después de muchos años.',
                              ),
                              SizedBox(height: 12),
                              InfoCardWidget(
                                name: 'León',
                                image: 'lion',
                                bigImage: 'lion_2',
                                audio: 'lion',
                                infoText:
                                    'Los leones son conocidos como los "reyes de la selva" y su rugido puede escucharse hasta a 8 kilómetros. Las hembras son las que cazan para alimentar a toda la familia.',
                              ),
                              SizedBox(height: 12),
                              InfoCardWidget(
                                name: 'Gallo',
                                image: 'rooster',
                                bigImage: 'rooster_2',
                                audio: 'rooster',
                                infoText:
                                    'Los gallos cantan para marcar su territorio y avisar a otros que están ahí. Su canto puede escucharse desde muy lejos, ¡incluso a 1 km de distancia!',
                              ),
                              SizedBox(height: 12),
                            ],
                          ),
                        ),
                        SizedBox(width: 32),
                        RotatedMenuWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
