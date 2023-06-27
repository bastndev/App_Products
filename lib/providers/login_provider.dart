import 'package:flutter/material.dart';

class LoginFormProviders extends ChangeNotifier {

  GlobalKey <FormState> formKey = GlobalKey<FormState>();

  String email    = '' ;
  String password = '' ;

  bool _isloading = false;
  bool get isLoading => _isloading;

  set isLoading(bool value){
    _isloading = value;
    notifyListeners();
  }

  bool  isValidForm(){
    return formKey.currentState?.validate()?? false;
  }

}