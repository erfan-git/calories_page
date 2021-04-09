import 'package:calories_page/utils/custom_paint.dart';
import 'package:flutter/material.dart';

class CalorieBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: size.width,
        height: 80,
        color: Colors.transparent,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
              child: CustomPaint(
                size: Size(size.width, 80),
                painter: BottomAppBarShape(),
              ),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                onPressed: (){},
                backgroundColor: Color(0xff3EC8BC),
                child: Icon(Icons.add),
              ),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageIcon(
                    AssetImage("assets/icons/home.png"),
                    color: Color(0xFFD6D9E0),
                  ),
                  ImageIcon(
                    AssetImage("assets/icons/group.png"),
                    color: Color(0xFFD6D9E0),
                  ),
                  Container(
                    width: size.width * 0.2,
                  ),
                  ImageIcon(
                    AssetImage("assets/icons/statistics.png"),
                    color: Color(0xFF27496D),
                  ),
                  ImageIcon(
                    AssetImage("assets/icons/newspaper.png"),
                    color: Color(0xFFD6D9E0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



