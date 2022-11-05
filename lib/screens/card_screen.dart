import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10,
        ),
        child: ListView(
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              nameCard: 'A Wonderful Road',
              imageUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
            ),
            SizedBox(height: 15),
            CustomCardType2(
              imageUrl:
                  'https://images.squarespace-cdn.com/content/v1/5919021a1e5b6c940741bc9b/1576177860363-WGW3ZZ7WX7R5YOLMXZKJ/MT+TARANAKI+-+AGORAjpg.jpg',
            ),
            SizedBox(height: 15),
            CustomCardType2(
              nameCard: 'A Wonderful Landscape',
              imageUrl:
                  'https://www.mickeyshannon.com/photos/landscape-photography.jpg',
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
