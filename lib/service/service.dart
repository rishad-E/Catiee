import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dogiee/model/model.dart';

class ServiceClass {
  Dio dio = Dio();

  Future<List<ResponseModel>?> getDetails() async {
    String baseurl =
        'https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=beng&api_key=live_GODUA0g7ku4Jzavf8YFEJ8CZOoXlQmLYRjJSXcX8sh7OIl04mkayv4ldNkPqS2Bi';

    try {
      Response response = await dio.get(baseurl);

      if (response.statusCode == 200) {
       List<dynamic> res = response.data;
       final data = res.map((e) => ResponseModel.fromJson(e)).toList();
        
        log(data.toString());

       return data;
      }
    } catch (e) {
      log(e.toString(), name: 'error');
    }
    return null;
  }
}
