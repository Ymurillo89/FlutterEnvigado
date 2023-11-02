import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/home_provider.dart';

class NoticeProvider extends ChangeNotifier{

  List<String> img =[];


  getImages(BuildContext context) async{
    var data = img;
    
    //notifyListeners();
  } 

  setImage(String dataImg,BuildContext context){
    img.add(dataImg);
    notifyListeners();
  }
}