import 'package:flutter/material.dart';

class PaymentConfirmationPage extends StatefulWidget {
  const PaymentConfirmationPage({Key? key}) : super(key: key);

  @override
  _PaymentConfirmationPageState createState() => _PaymentConfirmationPageState();
}

class _PaymentConfirmationPageState extends State<PaymentConfirmationPage> {
  String _selectedPaymentMethod = 'Credit Card';
  List<String> _paymentMethods = [
    'Credit Card',
    'Debit Card',
    'PayPal',
    'Google Pay',
    'Gcash'];

  void submitPaymentDetails() {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Payment!'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  final List<Widget> _pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Payment Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),


      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'First Name:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your first name',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Last Name:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your last name',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Address:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your address',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Payment Method:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            DropdownButtonFormField<String>(
              value: _selectedPaymentMethod,
              items: _paymentMethods.map((String paymentMethod) {
                return DropdownMenuItem<String>(
                  value: paymentMethod,
                  child: Text(paymentMethod),
                );
              }).toList(),
              onChanged: (selectedPaymentMethod) {
                setState(() {
                  _selectedPaymentMethod = selectedPaymentMethod!;
                });
              },
            ),


            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade300),

                ),
                child: Text('Submit'),
                onPressed: submitPaymentDetails,
              ),
            ),



            Expanded(
              child: PageView(
                children: _pages,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

//itong widget ay nagproprovide ng form para kay user to input 'yong payment details,
// which includes first name, last name, address, and payment method.
// si user ay pwedeng mag submit ng form kapag ni-click 'yong  "Submit" button,
// which nagtritriggers 'yong submitPaymentDetails method at
// pinapakita 'yong confirmation dialog natin