import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/destination_detailed.dart';
import 'destination.dart';

class DestinationTile extends StatelessWidget {
  final Destination destination;

  DestinationTile({Key? key, required this.destination}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 290,
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                destination.imagePath,
                height: 220,
                width: 332,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '📍' + destination.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    destination.location,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '⭐${destination.point} Rating | 🚘${destination.awayFrom} km Away',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DestinationDetailed(
                        destinationImage: destination.imagePath,
                      )));

                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 500,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                destination.name,
                                style: TextStyle(
                                  color: Color(0xFF2D323D),
                                  fontSize: 38,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3,
                                  fontFamily: 'SF UI Display',
                                ),
                              ),
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  'Hakkında',
                                  style: TextStyle(
                                    color: Color(0xFF2D323D),
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3,
                                    fontFamily: 'SF UI Display',
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: SizedBox(
                                    height: 120,
                                    child: SingleChildScrollView(
                                      child: Text(
                                        destination.info,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () => MapsLauncher.launchQuery('${destination.name}${destination.location}'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Haritaya Yönlendir🗺️',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  wishList.add(this.destination);
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();

                                  final snackBar = SnackBar(
                                    content: const Text('Eklendi'),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Gidileceklere ekle📌',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Set background color to orange
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Detaylar',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
