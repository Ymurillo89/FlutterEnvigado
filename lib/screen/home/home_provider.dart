import 'package:appuenvigado/screen/notice/notice_provider.dart';
import 'package:appuenvigado/screen/work/work_screen.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

  NoticeProvider noticeProvider = NoticeProvider();

  List<String> image=[];

  addImage(String img,BuildContext context) async{

    //image.add(img);
    final datosRecibidos = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WorkScreen(img),
      ),
    );
  


    notifyListeners();



  }
  
}
