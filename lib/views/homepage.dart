import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../controller/homecontroller.dart';
import '../utilities/color.dart';
import '../utilities/dimesion.dart';
import '../utilities/list.dart';
import '../utilities/style.dart';
import 'emplyeedeatils.dart';

class homePageScreen extends StatefulWidget {
  const homePageScreen({super.key});

  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  final homeCtrl = Get.put(homeController());

  getSession() async {
    homeCtrl.getList();
    homeCtrl.getListner();
  }

  @override
  void initState() {
    // TODO: implement initState
    getSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clr().backgrndClr,
        title: Text(
          'Employee',
          style: Sty().mediumText.copyWith(color: Clr().white),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          // Alphabet List
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dim().d12),
            child: SizedBox(
              width: Dim().d40,
              child: ListView.builder(
                itemCount: listEmployee().alphabets.length,
                itemBuilder: (context, index) {
                  var v = listEmployee().alphabets[index];
                  return Obx(
                    () => GestureDetector(
                      onTap: () {
                        homeCtrl.updateIndex(index);
                      },
                      child: Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            color: homeCtrl.selectIndex.value == index
                                ? Clr().backgrndClr
                                : Clr().white,
                            border: Border.all(
                              color: Clr().backgrndClr,
                              width: 0.3,
                            )),
                        child: Center(
                          child: Text(v,
                              style: Sty().mediumText.copyWith(
                                  color: homeCtrl.selectIndex.value == index
                                      ? Clr().white
                                      : Clr().black)),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Displayed Names

          Expanded(
              child: Obx(
            () => Padding(
              padding: EdgeInsets.symmetric(vertical: Dim().d12),
              child: ScrollablePositionedList.builder(
                itemScrollController: homeCtrl.scrollController,
                itemCount: homeCtrl.employeeList.length,
                itemPositionsListener: homeCtrl.itemPositionsListener,
                itemBuilder: (context, index) {
                  var v = homeCtrl.employeeList[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            v['type'],
                            style: Sty().mediumText,
                          ),
                        ),
                        SizedBox(
                          height: Dim().d12,
                        ),
                        nameLayout(v)
                      ],
                    ),
                  );
                },
              ),
            ),
          )),
        ],
      ),
    );
  }

  Widget nameLayout(v) {
    return ListView.builder(
      itemCount: v['list'].length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index2) {
        var data = v['list'][index2];
        return InkWell(
          onTap: () {
            Get.to(emplyeePage(), arguments: data);
          },
          child: Container(
            padding: EdgeInsets.all(Dim().d14),
            margin:
                EdgeInsets.symmetric(vertical: Dim().d8, horizontal: Dim().d12),
            decoration: BoxDecoration(
                color: Clr().white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dim().d12,
                  ),
                ),
                border: Border.all(
                  color: Colors.black12,
                  width: 0.1,
                )),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: Dim().d38,
                ),
                SizedBox(
                  width: Dim().d8,
                ),
                Text(
                  '${data['first_name']} ${data['surname']}',
                  style: Sty().smallText,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
