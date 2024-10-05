import '../../data/models/base_response.dart';
import '../error_handler.dart';

class ApiParameters {
  final bool iShowError;
  final String? errorMessage;

  ApiParameters({this.errorMessage, this.iShowError = false});
}

extension FutureExtension<T> on Future<BaseResponseModel<T>> {
  Future<T?> call({ApiParameters? apiParameters}) {
    return then((value) => value.object).catchError((error) {
      return ErrorHandler.handleError<T>(error, apiParameters: apiParameters);
    });
  }
}
