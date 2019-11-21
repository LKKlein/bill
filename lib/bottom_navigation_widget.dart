import 'package:bill/iconfont.dart';
import 'package:bill/pages/analysis.dart';
import 'package:bill/pages/index.dart';
import 'package:bill/pages/mine.dart';
import 'package:bill/pages/wealth.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(IndexPage())
      ..add(AnalysisPage())
      ..add(WealthPage())
      ..add(MinePage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    IconFont.iconIndex,
                    size: 22.0,
                  ),
                  title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('首页'))),
              BottomNavigationBarItem(
                  icon: Icon(IconFont.iconAnalysis, size: 22.0),
                  title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('分析'))),
              BottomNavigationBarItem(
                  icon: Icon(IconFont.iconWealth, size: 22.0),
                  title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('资产'))),
              BottomNavigationBarItem(
                  icon: Icon(IconFont.iconMine, size: 22.0),
                  title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text('我的')))
            ],
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedFontSize: 14.0,
            unselectedFontSize: 14.0,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xFFBEBEBE),
            selectedItemColor: const Color(0xFFF6C431)));
  }
}
