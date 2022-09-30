import 'package:flutter/material.dart';
import 'package:flutter_provider_basic/providers.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num = Provider.of<MyProvider>(context).sayi;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Number is = $num",
                style: const TextStyle(fontSize: 24),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<MyProvider>(context, listen: false).sayiArttir();
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<MyProvider>(context, listen: false).sayiAzalt();
                },
                child: const Icon(Icons.backspace_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
