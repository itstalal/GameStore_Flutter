import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person),
        ),
      ],
      onTap: (index) {
      },
    );
  }
}
