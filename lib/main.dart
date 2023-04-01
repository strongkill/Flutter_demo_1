import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/profile_page.dart';

void main() {
  runApp( const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const RootPage(),
    );
  }
}
class RootPage extends StatefulWidget{
  const RootPage({super.key});

  @override
  State<StatefulWidget> createState()=> _RootPageState();

}

class _RootPageState extends State<RootPage>{
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("reading"),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon:Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }

}