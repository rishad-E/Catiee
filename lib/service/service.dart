import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dogiee/model/model.dart';

class ServiceClass {
  Dio dio = Dio();

  Future<List<ResponseModel>?> getDetails() async {
    String baseurl = 'https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=beng&api_key=live_GODUA0g7ku4Jzavf8YFEJ8CZOoXlQmLYRjJSXcX8sh7OIl04mkayv4ldNkPqS2Bi';
    try {
      Response response = await dio.get(baseurl,options: Options(validateStatus: (status) => status! < 400,));

      if (response.statusCode == 200) {
        final result = response.data;
        
        // final result = json.decode(response.toString());
        // //  final data = res.map((e) => ResponseModel.fromJson(e)).toList();
        List<ResponseModel> res = List<ResponseModel>.from(
            result.map((x) => ResponseModel.fromJson(x)));

        log(res.toString(),name: 'response');
        return res; 
      }
    } catch (e) {
      log(e.toString(), name: 'error');
    }
    return null;
  }
}
