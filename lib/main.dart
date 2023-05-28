import 'package:flutter/material.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails error) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60, 90, 60, 0),
        child: Column(
          children: [
            const Icon(
              Icons.error,
              color: Colors.red,
              size: 110,
            ),
            const Text('Something went wrong :(")'),
            const SizedBox(
              height: 20,
            ),
            Text(
              error.exception.toString(),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  };
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var debugShowCheckedModeBanner2 = false;
    return MaterialApp(
      title: 'Custom Error Screen',
      home: const MyStatefulWidget(),
      debugShowCheckedModeBanner: debugShowCheckedModeBanner2,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Error Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(70),
          color: Colors.amber,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(25.0),
            
          ),
          child: Text('FlutterShop'),
        ),
      ),
    );
  }
}
