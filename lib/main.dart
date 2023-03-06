// ignore_for_file: unused_local_variable, unnecessary_null_comparison
import 'package:bayu/blank.dart';
import 'package:bayu/inputpage.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homepage.dart';

// AndroidNotificationChannel channel = AndroidNotificationChannel(
//   "id",
//   "name",
//   importance: Importance.high,
//   playSound: true,
// );
// FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("FirebaseMessaging onBackgroundMessage");
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await requestPermission();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<
  //         AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  // OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  // OneSignal.shared.setAppId("32925edd-fc44-4c4f-a251-13dc18d05e06");
  // OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
  //   print("Accepted permission: $accepted");
  // });
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

// Future<void> requestPermission() async {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   NotificationSettings settings = await messaging.requestPermission(
//     alert: true,
//     announcement: false,
//     badge: true,
//     carPlay: false,
//     criticalAlert: false,
//     provisional: false,
//     sound: true,
//   );

//   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//     print('User granted permission');
//   } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//     print('User granted provisional permission');
//   } else {
//     print('User declined or has not accepted permission');
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int counter = 0;
  // Future<void> setupMessage() async {
  //   FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  //   firebaseMessaging.getToken().then((token) {
  //     FirebaseFirestore firebase = FirebaseFirestore.instance;
  //     CollectionReference users = firebase.collection("Token");
  //     print("token : $token");
  //     users.add({"token": token});
  //   });

  //   RemoteMessage? initialMessage =
  //       await FirebaseMessaging.instance.getInitialMessage();
  //   if (initialMessage != null) {
  //     _handleMessage(initialMessage);
  //   }

  //   FirebaseMessaging.onMessageOpenedApp.listen(
  //     (RemoteMessage message) {
  //       print("A new messageOpenedApp");
  //       RemoteNotification? notifications = message.notification;
  //       AndroidNotification? androids = message.notification?.android;
  //       if (notifications != null && androids != null) {
  //         showDialog(
  //           context: context,
  //           builder: (_) {
  //             return AlertDialog(
  //               title: Text(notifications.title.toString()),
  //               content: SingleChildScrollView(
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [Text(notifications.body.toString())],
  //                 ),
  //               ),
  //             );
  //           },
  //         );
  //       }
  //     },
  //   );

  //   FirebaseMessaging.onMessage.listen(
  //     (RemoteMessage message) {
  //       RemoteNotification? notification = message.notification;
  //       AndroidNotification? android = message.notification?.android;
  //       if (notification != null && android != null) {
  //         flutterLocalNotificationsPlugin.show(
  //           notification.hashCode,
  //           notification.title,
  //           notification.body,
  //           NotificationDetails(
  //             android: AndroidNotificationDetails(
  //               channel.id,
  //               channel.name,
  //               color: Colors.blue,
  //               playSound: true,
  //               icon: "@mipmap/launcher_icon",
  //             ),
  //           ),
  //         );
  //       }
  //     },
  //   );
  // }

  // void _handleMessage(RemoteMessage message) {
  //   var routename = message.data["route"];
  //   Navigator.pushNamed(context, routename);
  // }

  // @override
  // void initState() {
  //   super.initState();

  //   setupMessage();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/blank-page": (context) => BlankPage(),
        "/inputdata-page": (context) => InputPage()
      },
      home: MyHomePage(),
      // home: StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.userChanges(),
      //   builder: (_, snapshot) {
      //     final isSignedIn = snapshot.data != null;
      //     return isSignedIn ? MyHomePage() : EmailSignInPage();
      //   },
      // ),
      debugShowCheckedModeBanner: false,
    );
  }

  // SafeArea localNotification() {
  //   return SafeArea(
  //     child: Scaffold(
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: () {
  //           setState(() {
  //             counter++;
  //           });
  //           flutterLocalNotificationsPlugin.show(
  //             0,
  //             "Testing $counter",
  //             "How you doin?",
  //             NotificationDetails(
  //               android: AndroidNotificationDetails(
  //                 channel.id,
  //                 channel.name,
  //                 importance: Importance.high,
  //                 color: Colors.blue,
  //                 playSound: true,
  //                 icon: "@mipmap/launcher_icon",
  //               ),
  //             ),
  //           );
  //         },
  //         child: Icon(Icons.input),
  //       ),
  //     ),
  //   );
  // }
}
