import 'package:flutter/material.dart';

class DestinationDetailed extends StatelessWidget {
  final String destinationImage; // Declare destinationImage as a field

  const DestinationDetailed({
    Key? key,
    required this.destinationImage, // Add required parameter to the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, top: 10), // Padding for the back button
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Expanded(
          child: Container(
            width: 393,
            height: 808,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(destinationImage), // Use the destinationImage here
                fit: BoxFit.fitHeight,
                alignment: Alignment(-0.0, -3),
                scale: 1.2,
              ),
            ),
            child: SizedBox(width: double.infinity),
          ),
        ),
      ],
    );
  }
}
