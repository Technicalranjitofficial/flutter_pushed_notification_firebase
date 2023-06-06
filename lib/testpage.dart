// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   @override
//   void initState() {
//     super.initState();
//     _firebaseMessaging.requestPermission();

//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       // Handle incoming message when the app is in the foreground
//       print('Received message: ${message.notification?.title}');
//       _showNotificationSnackBar(message.notification?.title ?? '');
//     });

//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

//     _initializeNotifications();
//   }

//   Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//     await Firebase.initializeApp();

//     print('Received background message: ${message.notification?.title}');

//     _showNotification(message.notification?.title ?? '');
//   }

//   void _initializeNotifications() {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('app_icon');
//     final InitializationSettings initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid);
//     _flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   Future<void> _onSelectNotification(String? payload) async {
//     if (payload != null) {
//       debugPrint('Notification clicked. Payload: $payload');
//     }
//   }

//   Future<void> _showNotification(String message) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'your_channel_id',
//       'your_channel_name',
//       'your_channel_description',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);
//     await _flutterLocalNotificationsPlugin.show(
//       0,
//       'New Notification',
//       message,
//       platformChannelSpecifics,
//       payload: 'Custom_Sound',
//     );
//   }

//   void _showNotificationSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FCM Push Notifications',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('
