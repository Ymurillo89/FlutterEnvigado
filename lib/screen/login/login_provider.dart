import 'package:appuenvigado/screen/home/home_screen.dart';
import 'package:appuenvigado/service/alert_service.dart';
import 'package:appuenvigado/service/auth_service.dart';
import 'package:flutter/material.dart';



class LoginProvider extends ChangeNotifier{

  AuthService authService = AuthService();

  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  getLogin(BuildContext context) async{
    
    Alert alert = Alert(context);

    if(user.text!="" && password.text!="" )
    {
        if (await authService.login(user.text, password.text)) {
           Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>  const HomeScreen(),
          ));
        }else{
          alert.showAlertDialog("Advertencia", "Usuario o contraseña incorrectos");
        }
    }else{
      alert.showAlertDialog("Advertencia", "Usuario o contraseña incorrectos");
    }

  }
 


}