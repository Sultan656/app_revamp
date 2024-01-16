// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kistpay_consumer_revamp/src/app/app.locator.dart';
import 'package:kistpay_consumer_revamp/src/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavService extends BaseViewModel {
  static NavigationService _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;
  static SnackbarService _snackbarService = locator<SnackbarService>();

  static Future<dynamic>? showSnackbar(String title, String message) {
    _snackbarService.showSnackbar(title: title, message: message);
  }

  // routes with args
  static Future<dynamic>? loginView({dynamic arguments}) =>
      _navigationService.navigateTo(Routes.loginView, arguments: arguments);

  static goBack() => _navigationService.back();

  static dynamic popOutWithResult(dynamic data, {int? id}) =>
      _navigationService.back(result: data, id: id);
}
