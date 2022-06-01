import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
