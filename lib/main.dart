import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praticegetx/controllers/count_controller.dart';

void main() => runApp(
  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
    ),
    );


class Home extends StatelessWidget {
       

  @override
  Widget build(context) {
    

   
    final Controller c = Get.put(Controller());
    

    return Scaffold(
    
      
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

      
      body: Center(child: ElevatedButton(
              child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment));
  }
}

class Other extends StatelessWidget {
  
  final Controller c = Get.find();

  @override
  Widget build(context){
     // Access the updated count variable
     return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
