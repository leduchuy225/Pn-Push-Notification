import 'package:dio/dio.dart';

import '../widgets/dialog/dialog_widget.dart';
import 'const/constants.dart';
import 'extensions/future_extension.dart';

class ErrorHandler {
  ErrorHandler._();

  static String getMessageFromResponse(Response response) {
    if (response.data is! Map) {
      return Constants.httpError;
    }
    return '${response.data['status']} - ${response.data['error']}';
  }

  static bool isError(Response response) {
    return false;
    // return response.data is Map && response.data?['message'] != Constants.successMessage;
  }

  static T? handleError<T>(Object error, {ApiParameters? apiParameters}) {
    switch (error.runtimeType) {
      case DioException:
        final dioException = error as DioException;
        if (dioException.response != null) {
          MyDialog.snackbar(getMessageFromResponse(dioException.response!),
              type: SnackbarType.ERROR);
          return null;
        }
        MyDialog.snackbar(dioException.message.toString(),
            type: SnackbarType.ERROR);
        return null;
      default:
        MyDialog.snackbar(error.toString(), type: SnackbarType.ERROR);
    }
    return null;
  }
}
