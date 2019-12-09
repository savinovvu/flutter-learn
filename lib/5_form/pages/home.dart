import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  Order order = Order();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
              autovalidate: true,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Espresso',
                        labelText: 'Item',
                      ),
                      validator: (value) => _validateItemRequired(value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '3',
                        labelText: 'Quantity',
                      ),
                      validator: (value) => _validateItemCount(value),
                      onSaved: (value) => order.quantity = int.tryParse(value),
                    ),
                    Divider(height: 32.0),
                    RaisedButton(
                      child: Text('Save'),
                      color: Colors.lightGreen,
                      onPressed: () => _submitOrder(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String _validateItemRequired(String value) {
    return value.isEmpty ? 'Item Required' : null;
  }

  String _validateItemCount(String value) {
// Check if value is not null and convert to integer
    int _valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? 'At least one Item is Required' : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState.validate()) {
      _formStateKey.currentState.save();
      print('Order Item: ${order.item}');
      print('Order Quantity: ${order.quantity}');
    }
  }
}

class Order {
  String item;
  int quantity;
}
