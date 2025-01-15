import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeId;

  PlaceDetailsPage({required this.placeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Place Details')),
      body: Center(
        child: Text('Details for place $placeId'),
      ),
    );
  }
}