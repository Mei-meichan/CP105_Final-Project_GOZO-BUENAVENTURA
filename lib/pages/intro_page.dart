import 'package:flutter/material.dart';
import 'package:flutterfinalprojectjeagail/pages/home_page.dart';



class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                'lib/images/sweglogo.png',
                 height: 300,

                ),
            ),


            //title naman ito
            Text(
                'Solefully Your Style',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),

          //subtitle ito

          const SizedBox(height:18),
            Text(
              'Step into sustainable fashion with our preloved shoe collection.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 50),

            //start new button
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(),
                  ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding:const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,

                    ),
                  ),
                ),
          ),
            ),

          ]
      ),
        ),
    ));
  }
}

//this widget ay nagseserve as the introductory page ng app natin
// nagdidisplay din ito ng logo, title, subtitle, at  button para
// ma-navigate to the HomePage when na-click or na-tap