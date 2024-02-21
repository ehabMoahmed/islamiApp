import 'package:shared_preferences/shared_preferences.dart';

class CacheData{
 static    SharedPreferences? sharedPreferences1;


  //to assign variable
  static void cacheInitilization()async{
    sharedPreferences1=await SharedPreferences.getInstance();//  create only one obj and use it
  }
  //methods

  //1. set
static Future<bool> setData({required String key, required dynamic value})async{

  if(value is int){
    await sharedPreferences1?.setInt(key, value );
    return true;
  }

  if(value is String) {
    await sharedPreferences1?.setString(key, value);
    return true;
  }

  if(value is bool){
    await sharedPreferences1?.setBool(key, value);
    return true;
  }

  if(value is double){
    await sharedPreferences1?.setDouble(key, value);
    return true;
  }
  return false;  //law mfesh haga atmlt khales
}


//get data=> key
static dynamic getData({required String key}){
    return sharedPreferences1?.get(key); //get data mn no3 ay haga 3ady
}

//delete item => key
static void deleteItem({required String key}){
    sharedPreferences1?.remove(key);
    sharedPreferences1?.clear();
}

}
