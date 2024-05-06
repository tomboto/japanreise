import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int festival = 0;
  int noodle = 0;
  int fuji = 0;

  void addFestival() {
    festival++;
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
      notifyListeners();
    }
  }

  void clearFestival() {
    festival = 0;
    notifyListeners();
  }

  void addNoodle() {
    noodle++;
    notifyListeners();
  }

  void removeNoodle() {
    if (noodle > 0) {
      noodle--;
      notifyListeners();
    }
  }

  void clearNoodle() {
    noodle = 0;
    notifyListeners();
  }

  void addFuji() {
    fuji++;
    notifyListeners();
  }

  void removeFuji() {
    if (fuji > 0) {
      fuji--;
      notifyListeners();
    }
  }

  void clearFuji() {
    fuji = 0;
    notifyListeners();
  }

  int get totalItems => festival + noodle + fuji;
}
