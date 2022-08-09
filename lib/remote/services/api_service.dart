import 'package:flutter_course_app/remote/constants.dart';
import 'package:flutter_course_app/remote/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<UserModel>>  getUser()
    async {
    try{
      ///  https://jsonplaceholder.typicode.com/users
       var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.usersEndpoint);
      var respone = await  http.get(url);
      print(respone.body);
      if(respone.statusCode == 200){

        List<UserModel> _model = userModelFromJson(respone.body);
        return _model;
      }

    }catch(e){
      print(e.toString());

    }
    return [];




  }
}