import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../utilities/dimesion.dart';
import '../utilities/list.dart';

class homeController extends GetxController {
  RxList employeeList = [].obs;
  RxInt selectIndex = 0.obs;
  ItemScrollController scrollController = ItemScrollController();
  ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  List<GlobalKey> itemKeys = [];

  /// add list one by one
  void getList() {
    employeeList.value = listEmployee().nameList;
    itemKeys = List.generate(employeeList.length, (_) => GlobalKey());
    print(itemKeys);
    update();
  }

  /// for update selectIndex
  void updateIndex(int index) {
    scrollController.scrollTo(
        index: index, duration: Duration(seconds: 1), curve: Curves.ease);
    update();
  }

  /// listner for checking location of alphabet
  getListner() {
    itemPositionsListener.itemPositions.addListener(() {
      // Get the set of visible items
      final visibleItems = itemPositionsListener.itemPositions.value;
      // Print the visible items
      visibleItems.forEach((position) {
        print('Item ${position.index} is visible');
        selectIndex.value = position.index;
      });
    });
    update();
  }
}
