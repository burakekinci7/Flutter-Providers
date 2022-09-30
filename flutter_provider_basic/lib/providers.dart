import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  int sayi;

  MyProvider({required this.sayi});

  void sayiArttir() {
    sayi++;
    notifyListeners();
  }

  void sayiAzalt() {
    sayi--;
    notifyListeners();
  }
}
