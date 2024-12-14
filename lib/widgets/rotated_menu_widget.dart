import 'package:flutter/material.dart';

class RotatedMenuWidget extends StatelessWidget {
  const RotatedMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform(
          transform: Matrix4.rotationZ(-1.5708),
          alignment: Alignment.topCenter,
          child: const Text(
            'Animales',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 118),
        Transform(
          transform: Matrix4.rotationZ(-1.5708),
          alignment: Alignment.topCenter,
          child: const Text(
            'Bichos',
            style: TextStyle(
              color: Color.fromARGB(255, 147, 170, 170),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 118),
        Transform(
          transform: Matrix4.rotationZ(-1.5708),
          alignment: Alignment.topCenter,
          child: const Text(
            'Marinos',
            style: TextStyle(
              color: Color.fromARGB(255, 147, 170, 170),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 118),
        Transform(
          transform: Matrix4.rotationZ(-1.5708),
          alignment: Alignment.topCenter,
          child: const Text(
            'Aves',
            style: TextStyle(
              color: Color.fromARGB(255, 147, 170, 170),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
