import 'package:appjam_release1/destination_data/destination.dart';
import 'package:appjam_release1/screens/home.dart';
import 'package:flutter/material.dart';

class AddDestination extends StatefulWidget {
  const AddDestination({Key? key}) : super(key: key);

  @override
  _AddDestinationState createState() => _AddDestinationState();
}

class _AddDestinationState extends State<AddDestination> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni rota oluştur 🗺️'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'Rota adı',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(), //
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:0,left:10 ),
                  child: TextField(
                    controller: _controller2,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Hakkında',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller3,
              decoration: InputDecoration(
                labelText: 'Konum, şehir',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                destinationlist.add(Destination(
                    name: _controller1.text,
                    point: '4',
                    location: _controller3.text,
                    awayFrom: '233',
                    info: _controller2.text,
                    imagePath: "images/Safranbolu.jpg"
                ));

                final snackBar = SnackBar(
                  content: const Text('Rota paylaşıldı !'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));                // Butona tıklandığında yapılacak işlemler
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFDA403),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Container(
                width: 290,
                height: 53,
                alignment: Alignment.center,
                child: Text(
                  'Rotayı paylaş ! 📢',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AddDestination(),
  ));
}
