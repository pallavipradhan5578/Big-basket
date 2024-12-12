import 'package:camera/camera.dart';
import 'package:camera_app/mainpage.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final cameras=await availableCameras();
  runApp( MainApp(cameras: cameras,));
}

class MainApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MainApp({super.key,required this.cameras});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: 
      
    MainPage(cameras: cameras,),debugShowCheckedModeBanner: false,);
  }
}
