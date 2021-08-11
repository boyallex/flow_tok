import 'dart:convert';

import 'package:flow_tok/widgets/Profile/modules/profile_data.dart';
import 'globals.dart' as globals;

class ProfileService {

  Future<ProfileData> getData() async {
    // final data = await http.get('mobyte.com');
    // if(data.statusCOde == 200){
    //   return ProfileData.fromJson(jsonDecode(data.data));
    // }
    // final data = globals.json;
    // return Future.delayed(Duration(seconds: 2)).then((_) => ProfileData(data));
    return ProfileData(123);
  }
}