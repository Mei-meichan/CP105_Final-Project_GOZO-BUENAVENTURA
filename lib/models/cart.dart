import 'shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Sketchers Uno',
      price: '₱2,123.50',
      description: 'Unique and stylish shoe with US size of 8, and European size of 39',
      imagePath: 'lib/images/sneakers.jpg',
    ),
    Shoe(
      name: 'Nike Zegama',
      price: '₱2,794.74',
      description: 'Stylish and eco-friendly shoe with US size of 7, and European size 37.5 ',
      imagePath: 'lib/images/nikeee.jpg',
    ),
    Shoe(
      name: 'Converse All Star',
      price: '₱2,390.00',
      description: 'Trendy and comfortable shoe with US size of 7, and European size 37.5',
      imagePath: 'lib/images/yoyo.png',
    ),
    Shoe(
      name: 'Nike Structure 4',
      price: '₱2,794.74',
      description: 'Very affortable yet quality with US size of 8 and European size 39',
      imagePath: 'lib/images/nikeshoesshe.jpg',
    ),

  ];


  //list of items sa cart
  List<Shoe> userCart = [
  ];

  //get list of shoes na sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

//add items sa cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item sa cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners(); //help all the widgets to update the data
  }

  //calculate 'yong total price

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < userCart.length; i++) {
      totalPrice += double.parse(
          userCart[i].price.replaceAll('₱', '').replaceAll(',', ''));
    }
    return totalPrice.toStringAsFixed(2);
  }








}

// agrerepresent sa shoppping cart functionalities. ni-ma-manage niya ang available shoes,
//items  na na-add sa cart, method add, remove at calculate ng total price tapos
//chnagenotifier inaallow ng ibang widgets to listen 'yong mga changes doon sa cart state