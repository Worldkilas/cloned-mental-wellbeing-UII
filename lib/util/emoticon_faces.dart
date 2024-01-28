import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String label;
  const EmoticonFace(
      {super.key, required this.emoticonFace, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(16),
          child: Center(
              child: Text(
            emoticonFace,
            style: const TextStyle(fontSize: 25),
          )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
