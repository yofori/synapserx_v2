import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageLocation});
  final String title;
  final String subtitle;
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(imageLocation),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
