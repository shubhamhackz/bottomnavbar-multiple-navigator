import 'package:bottom_navbar/routes/navigator_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return !await Navigator.maybePop(
                navigatorKeys[_pageIndex].currentState.context);
          },
          child: IndexedStack(
            index: _pageIndex,
            children: <Widget>[
              NavigatorPage(
                child: Text('Home'),
                navigatorKey: navigatorKeys[0],
              ),
              NavigatorPage(
                child: Text('Business'),
                navigatorKey: navigatorKeys[1],
              ),
              NavigatorPage(
                child: Text('Technology'),
                navigatorKey: navigatorKeys[2],
              ),
              NavigatorPage(
                child: Text('Education'),
                navigatorKey: navigatorKeys[3],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Technology',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Education',
          ),
        ],
        currentIndex: _pageIndex,
        onTap: (int index) {
          setState(
            () {
              _pageIndex = index;
            },
          );
        },
      ),
    );
  }
}
