import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isartest/testmodel.dart';
import 'package:path_provider/path_provider.dart';

class Db {
  @pragma("vm:entry-point")
  static late Isar isar;

  @pragma("vm:entry-point")
  static initIsar() async {
    try {
      final dir =
          await getApplicationSupportDirectory(); // path_provider package
      isar = await Isar.open(
        [TestModelSchema],
        directory: dir.path,
      );
    } catch (e) {
      print("err : $e");
    }
  }
}

class NotiCtl {
  static Future<bool> init() async {
    var isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      AwesomeNotifications().requestPermissionToSendNotifications();
      return false;
    }
    AwesomeNotifications().initialize(
        'resource://drawable/res_app_icon',
        [
          NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'basic_channel',
            channelDescription: 'basic_channel',
            importance: NotificationImportance.Min,
            playSound: false,
          )
        ],
        // Channel groups are only visual and are not required
        channelGroups: [
          NotificationChannelGroup(
            channelGroupKey: 'basic_channel_group',
            channelGroupName: 'basic_channel_group',
          )
        ],
        debug: true);
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: onActionReceivedMethod,
        onNotificationCreatedMethod: onNotificationCreatedMethod,
        onNotificationDisplayedMethod: onNotificationDisplayedMethod,
        onDismissActionReceivedMethod: onDismissActionReceivedMethod);
    return true;
  }

  @pragma("vm:entry-point")
  static shownoti() async {
    WidgetsFlutterBinding.ensureInitialized();
    DartPluginRegistrant.ensureInitialized();

    print("run 68 ------ ");

    String localTimeZone =
        await AwesomeNotifications().getLocalTimeZoneIdentifier();
    print("run 72");
    await Db.initIsar(); // Isar.open
    print("run 74");

    var contents = NotificationContent(
      id: 10,
      channelKey: 'basic_channel',
      hideLargeIconOnExpand: true,
      title: "title : ${DateTime.now()}",
      body: "body",
      category: NotificationCategory.Message,
      notificationLayout: NotificationLayout.Default,
      actionType: ActionType.Default,
      autoDismissible: false,
      showWhen: true,
    );
    print("run 88 ------ ");

    var btns = [
      NotificationActionButton(
        key: "refresh",
        label: "refresh",
        actionType: ActionType.SilentAction,
        autoDismissible: false,
      ),
    ];

    await AwesomeNotifications()
        .createNotification(content: contents, actionButtons: btns);
  }

  static stop() async {
    AwesomeNotifications().cancelAll();
  }

  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // run();
    print("onNotificationCreatedMethod");
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    print("onNotificationDisplayedMethod");
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    print("onDismissActionReceivedMethod");
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    print("onActionReceivedMethod");
    shownoti();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Db.initIsar();
  await NotiCtl.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
            ElevatedButton(
                onPressed: () {
                  Db.isar.writeTxn(() async {
                    Db.isar.testModels.put(TestModel()..msg = "test");
                  });
                },
                child: Text("addData")),
            ElevatedButton(
                onPressed: () async {
                  print(await Db.isar.testModels.where().findAll());
                },
                child: Text("loadData")),
            ElevatedButton(
                onPressed: () async {
                  NotiCtl.shownoti();
                },
                child: Text("open notifcation")),
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
