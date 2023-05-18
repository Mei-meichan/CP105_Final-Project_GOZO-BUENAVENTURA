import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage> {

  //add shoe to the cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    //alert si user kung anong nangyare roon sa shoe

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully added!'),
          content: Text('Check your cart'),
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>Column(
      children: [


        //message



        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'rock your style, from heel to toe, with ShoeRock',
            style: TextStyle(color: Colors.grey[600], fontSize: 16,),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: const[
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),

        ),
        const SizedBox(height: 10),

        //list of shoes for sale

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){

              //get a shoe sa shop list
              Shoe shoe = value.getShoeList()[index];

              //return the shoe
              return ShoeTile(
                shoe: shoe,
                onTap: () =>addShoeToCart(shoe),
              );

            },
          ),
        ),

        const Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
              color: Colors.white),
        ),



      ],
    ));
  }
}

//this widget displays a list of shoes for sale,
// at inaallow si users na makapag add sa cart.
// meron rin na header and a message.
// itong page ay updated whenever the cart changes, thanks to the Consumer widget.
//Consumer widget ay nagproprovide ng way to listen sa mga changes sa Cart object,
// at kapag 'yong cart nag change, the ShopPage widget ay marerebuilt  with the
// updated cart info at ensures 'yong displayed shoe list at
// any other components depending on the cart will reflect the latest state of the cart.