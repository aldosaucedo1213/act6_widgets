
import 'package:flutter/material.dart';

class DecimaPantalla extends StatefulWidget {
  const DecimaPantalla({Key? key}) : super(key: key);

  @override
  State<DecimaPantalla> createState() => _DecimaPantallaState();
}

class _DecimaPantallaState extends State<DecimaPantalla> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 10'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                'Switch',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: AnimatedCrossFade(
              firstChild: Container(
                color: Colors.blue[100],
                child: const Center(
                  child: Icon(
                    Icons.flutter_dash,
                    size: 150,
                    color: Colors.blue,
                  ),
                ),
              ),
              secondChild: Container(
                color: Colors.blueGrey[100],
                child: const Center(
                  child: Icon(
                    Icons.airplanemode_active,
                    size: 150,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
          ),
        ],
      ),
    );
  }
}