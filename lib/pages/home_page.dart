
import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'about_page.dart';
import 'cart_page.dart';
import 'shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //this selected index is actually to control the bottom nav bar
  int _selectedIndex = 0;
  //this method will update our selected index
  //kapag si user ay ni-click 'yong bottom bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages kung saan ipeplay
  final List<Widget> _pages = [
    //shop page ditp
    const ShopPage(),

    //cart page naman rito
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index)  => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Builder(builder: (context)  =>IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(right:20.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            //open daw drawer??
            Scaffold.of(context).openDrawer();
          },
        ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[780],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                children: [
                  //logo ng nike
                  DrawerHeader(
                    child: Image.asset(
                      'lib/images/shoerockkk.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey[600],
                    ),
                  ),

                  //other pages

                  ListTile(
                    leading: const Icon(Icons.info,
                    ),
                    title: const Text('About Us',
                      style: TextStyle(color: Colors.black,fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutPage()));
                    },
                  ),
                ]
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

    //HomePage widget ay parang nag seserves as the main page of the app,
// nagproprovide ito ng bottom navigation bar para sa pagswiswitch between different pages
// (at ito 'yong shop page at cart page natin)
// mayroong app bar din ito sa upper left na menu icon at kapag ni-click maoopen 'yong drawer
// at ma-a-access din 'yong isa pag page at ito 'yong About Us page nga