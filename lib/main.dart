import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "I am !";
  int currentInd = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Flutter Basics'),
            backgroundColor: Colors.green[400]),
        body: Center(
            child: currentInd == 0 ? Container(
          color: const Color.fromARGB(255, 221, 21, 148), //SizedBox is similar to container
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const  Color.fromARGB(255, 9, 162, 213),
                    onPrimary: const Color.fromARGB(255, 49, 17, 193)),
                onPressed: () {
                  // debugPrint('Hello Press me!');
                  setState(() {
                    buttonName = "Pressed!";
                  });
                },
                child: Text(buttonName),
              ),
              ElevatedButton(
                  onPressed: () {
                    // debugPrint('Hello Press me!');
                    setState(() {
                      buttonName = "Pressed!";
                    });
                  },
                  child: Text(buttonName)),
            ],
          ),
        ) 
          : Image.network('https://images.unsplash.com/photo-1651002621559-12b5676e29ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80')
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            )
          ],
          currentIndex: currentInd,
          onTap: (int index) {
            setState(() {
              currentInd = index;
            });
          },
        ),
      ),
    );
  }
}
