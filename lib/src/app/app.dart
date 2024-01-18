import 'package:kistpay_consumer_revamp/src/views/login/login_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
