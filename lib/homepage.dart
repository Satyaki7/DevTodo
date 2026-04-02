import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 40,
              width: 40,
              child: ClipRRect(
                child: Image.asset('assets/Untitled.jpg'),
                borderRadius: CircleBorder(20),
              ),
            ),
            Icon(
              Icons.menu,
              size: 30,
              color: const Color.fromARGB(228, 0, 0, 0),
            ),
          ],
        ),
      ),
      child: Center(
        child: CupertinoButton.filled(
          color: CupertinoColors.activeGreen,
          child: Text("Testing"),
          onPressed: () {
            print("Button Pressed");
          },
        ),
      ),
    );
  }
}
