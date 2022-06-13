import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                onPressed: (){
                Get.snackbar(
                  'Snackbar',
                  'This is snakbar',
                titleText:Text('Snackbar',style: const TextStyle(color: Colors.pink,fontSize: 18,fontWeight: FontWeight.bold)),
                  messageText: Text('This is snackbar',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                  snackPosition: SnackPosition.BOTTOM,
                  borderRadius: 20,
                  margin:const EdgeInsets.only(bottom: 50,left: 10,right: 10),
                  animationDuration:const Duration(seconds: 4),
                  backgroundGradient:const LinearGradient(colors: [Colors.orange,Colors.pink]),
                  borderColor: Colors.blueGrey,
                  borderWidth: 1,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1),
                      blurRadius: 3,
                      spreadRadius: 1,
                    )
                  ],
                );
              },
              child:const Text('Snackbar',style: TextStyle(color: Colors.pink,fontSize: 18),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
