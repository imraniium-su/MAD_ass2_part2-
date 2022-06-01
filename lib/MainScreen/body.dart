import 'package:flutter/material.dart';
import 'package:neew/constants.dart';
import 'package:neew/MainScreen/custom_card.dart';
import 'package:flutter/src/scheduler/ticker.dart';

class MainScreenBody extends StatefulWidget {
  @override
  _MainScreenBodyState createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    Size size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: kDarkGreyColor,
                ),
                Text(
                  'My Home',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container(
                  height: size.height * 0.045,
                  width: size.width * 0.095,
                )
              ],
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 30, right: 30),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Camera"),
                    Tab(text: "Light"),
                    Tab(text: "Aircond"),
                    Tab(text: "Gate"),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 700,
              child: TabBarView(
                controller: _tabController,
                children: [
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "MAIN LIGHT",
                          statusOn: "OPEN",
                          statusOff: "LOCKED",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.lightbulb_outline_sharp,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "MAIN SWITCH",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.ac_unit,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "AIRCOND",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.home_outlined,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "GATE",
                          statusOn: "OPEN",
                          statusOff: "LOCKED",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.camera_indoor_outlined,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "CAMERA",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.alarm,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "DOOR ALARM",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.lightbulb_outline_sharp,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "MAIN SWITCH",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "MAIN LIGHT",
                          statusOn: "OPEN",
                          statusOff: "LOCKED",
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.ac_unit,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "AIRCOND",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.ac_unit,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "AIRCOND",
                          statusOn: "ON",
                          statusOff: "OFF",
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CustomCard(
                          size: size,
                          icon: Icon(
                            Icons.home_outlined,
                            size: 55,
                            color: Colors.grey.shade400,
                          ),
                          title: "GATE",
                          statusOn: "OPEN",
                          statusOff: "LOCKED",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}