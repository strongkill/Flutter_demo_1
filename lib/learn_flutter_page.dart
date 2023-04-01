
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<StatefulWidget> createState()=> _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage>{
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon:const Icon(Icons.arrow_back_ios),),
        actions: [IconButton(onPressed: (){debugPrint("Actions");}, icon:const Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child:Column(
        children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(height: 10,),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin:const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
              'This is a text Widget',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch?Colors.green: Colors.blue,
            ),
              onPressed: (){debugPrint("Elevated Button");}, child:const Text("Elevated Button")),
          OutlinedButton(onPressed: (){debugPrint("Outlined Button");}, child:const Text("Outlined Button")),
          TextButton(onPressed: (){debugPrint("Outlined Button");}, child:const Text("Outlined Button")),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){
              debugPrint("this is the row");
            },
         child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department,
                color: Colors.blue,
              ),
              Text("Row widget"),
              Icon(Icons.local_fire_department,color: Colors.blue,),

            ],
          )
          ),
          Switch(value: isSwitch, onChanged: (bool newBool){
            setState(() { // refresh the widget
              isSwitch = newBool;
            });
          }),
          Checkbox(value: isCheckbox, onChanged: (bool? newBool){
            setState(() {
              isCheckbox = newBool;
            });
          }),
          Image.network("https://docs.flutter.dev/assets/images/flutter-logo-sharing.png"),
          Image.network("https://docs.flutter.dev/assets/images/flutter-logo-sharing.png"),
          Image.network("https://docs.flutter.dev/assets/images/flutter-logo-sharing.png"),
        ]),
      ),
    );
  }

}