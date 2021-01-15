import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';
import 'package:memory_professional/use_case/account/account_notifier.dart';
import 'package:memory_professional/use_case/account/account_state.dart';
import 'package:memory_professional/view/game_page/game_board_page.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AccountNotifier, AccountState>(
          create: (_) => AccountNotifier(context: context),
        )
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: RootPage(),
        );
      },
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key key}) : super(key: key);
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    _pushNotificationConfigure();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_afterBuild);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: GFLoader(type: GFLoaderType.circle),
      ),
    );
  }

  Future<void> _afterBuild(Duration duration) async {
    // TODO(mine2424): ifでアップデートがあったら即更新させるようにする
    // if()
    await Future<void>.delayed(const Duration(seconds: 1));

    _showMainPage();
  }

  void _pushNotificationConfigure() {
    _firebaseMessaging.requestNotificationPermissions(
      const IosNotificationSettings(
        sound: true,
        badge: true,
        alert: true,
        provisional: false,
      ),
    );

    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings setting) {
      print('Settings registered: $setting');
    });

    _firebaseMessaging.getToken().then((String token) async {
      print('Push Messaging token: $token');
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      },
      onResume: (Map<String, dynamic> message) async {
        print('onResume: $message');
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('onLaunch: $message');
      },
    );

    // ignore: cascade_invocations
    _firebaseMessaging.subscribeToTopic('all');
  }

  void _showMainPage() => Navigator.of(context)
          .pushReplacement<MaterialPageRoute, void>(MaterialPageRoute(
        builder: (_) => GameBoardPage.wrapped(),
      ));
}
