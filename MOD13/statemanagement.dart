import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
//Fikri Maulana
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => Cart(),
      child: MaterialApp(
        title: 'State Management Provider Demo - Fikri Maulana - 1301200239',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
//Fikri Maulana
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart - Fikri Maulana'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ItemList(),
          ),
          CartTotal(),
          ClearCartButton(),
        ],
      ),
    );
  }
}
//Fikri Maulana
class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder: (context, index) {
        final item = cart.items[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
          trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: () => cart.addItem(item),
          ),
        );
      },
    );
  }
}
//Fikri Maulana
class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Total: \$${cart.totalValue.toStringAsFixed(2)}',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
//Fikri Maulana
class ClearCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ElevatedButton(
      onPressed: () => cart.clearCart(),
      child: Text('Clear Cart'),
    );
  }
}
//Fikri Maulana
class Cart extends ChangeNotifier {
  List<Item> _items = [
    Item(name: 'Item 1', price: 40.0),
    Item(name: 'Item 2', price: 50.0),
    Item(name: 'Item 3', price: 60.0),
  ];

  List<Item> get items => _items;

  double get totalValue => _items.fold(0, (sum, item) => sum + item.price);

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}

class Item {
  final String name;
  final double price;

  Item({required this.name, required this.price});
}
