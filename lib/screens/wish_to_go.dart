import 'package:flutter/material.dart';
import 'package:appjam_release1/destination_data/destination.dart';
import 'package:appjam_release1/destination_data/destination_tile.dart';

class WishToGo extends StatelessWidget {
  const WishToGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gidilecekler🗺️",
          style: TextStyle(
            color: Color(0xFF20232D),
            fontSize: 24,
            fontWeight: FontWeight.w500,
            height: 1.3,
            fontFamily: 'SF UI Display',
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: wishList.isEmpty
            ? Center(
          child: Text(
            'Gidilecekler listen boş!😥',
            style: TextStyle(
              color: Color(0xFF2D323D),
              fontSize: 25,
              fontWeight: FontWeight.w600,
              height: 1.3,
              fontFamily: 'SF UI Display',
            ),
          ),
        )
            : ListView.builder(
            itemCount: wishList.length,
            itemBuilder: (_, index) {
            return DestinationTile(destination: wishList[index]);
          },
        ),
      ),
    );
  }
}
