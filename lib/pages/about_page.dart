import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'lib/images/logosaaboutpage.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 5),
            Text(
              '      Shoe Rock, a preloved shoe brand, is a go-to choice for those looking for authentic and high-quality shoes. With Shoe Rock, you can trust that you are getting the real deal. Plus, with a wide selection of styles, sizes, and brands, there is something for everyone. Shop with confidence, knowing you are investing in shoes that look great and last.',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//page na ito sa about page