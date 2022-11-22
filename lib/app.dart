import 'package:ekokurniadi/core/helper/constant_helper.dart';
import 'package:ekokurniadi/core/helper/dio_helper.dart';

class App {
  App._();
  
  static Future<void> init() async {
    DioHelper.initialDio(ConstantHelper.baseUrl);
    DioHelper.setDioLogger(ConstantHelper.baseUrl);
  }
}
