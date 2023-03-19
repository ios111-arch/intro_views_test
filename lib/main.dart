import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

/// This is the main method of app, from here execution starts.
void main() => runApp(App());

/// App widget class.
class App extends StatelessWidget {
  // Making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
      pageColor: Colors.indigoAccent,
      // iconImageAssetPath: 'assets/air-hostess.png',
      bubble: Image.asset('assets/IMG_6303.png'),
      body: const Text(
        '画面右下にある黄色いボタンを押すと、',
      ),
      title: const Text(
        'アプリの使い方',
      ),
      titleTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
        fontSize: 40,
      ),
      bodyTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
        fontSize: 20,
      ),
      mainImage: Image.asset(
        'assets/IMG_6303.png',
        height: 300.0,
        width: 300.0,
        alignment: Alignment.center,
      ),
    ),
    PageViewModel(
      pageColor: Colors.indigoAccent,
      iconImageAssetPath: 'assets/IMG_6303.png',
      body: const Text(
        'クイズ等のアプリで利用可能なコンテンツを表示することができます',
      ),
      title: const Text('アプリの使い方'),
      mainImage: Image.asset(
        'assets/IMG_6304.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
        fontSize: 40,
      ),
      bodyTextStyle: const TextStyle(
        fontFamily: 'MyFont',
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          onTapDoneButton: () {
            // Use Navigator.pushReplacement if you want to dispose the latest route
            // so the user will not be able to slide back to the Intro Views.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => HomePage()),
            );
          },
          pageButtonTextStyles: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

/// Home Page of our example app.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('This is the home page of the app'),
      ),
    );
  }
}
