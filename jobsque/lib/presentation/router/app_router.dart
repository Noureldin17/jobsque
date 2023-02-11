import 'package:flutter/material.dart';
import 'package:jobsque/presentation/screens/app_main_page.dart';
import 'package:jobsque/presentation/screens/authentication/AccountSuccessPage.dart';
// import 'package:jobsque/presentation/reusable_components/countrySelection.dart';
import 'package:jobsque/presentation/screens/authentication/CreateAccPage.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:jobsque/presentation/screens/authentication/CreateNewPasswordPage.dart';
import 'package:jobsque/presentation/screens/authentication/EmailCheckPage.dart';
import 'package:jobsque/presentation/screens/authentication/InterestsPage.dart';
import 'package:jobsque/presentation/screens/authentication/LoginPage.dart';
import 'package:jobsque/presentation/screens/authentication/OnBoardingPage.dart';
import 'package:jobsque/presentation/screens/authentication/PasswordChangedSuccess.dart';
import 'package:jobsque/presentation/screens/authentication/PreferedLocationsPage.dart';
import 'package:jobsque/presentation/screens/authentication/ResetPasswordPage.dart';
import 'package:jobsque/presentation/screens/SplashScreen.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/JobSearchPage.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/SearchResultsPage.dart';

class AppRouter {
  late Widget startscreen;

  Route? onGenerateRoute(RouteSettings settings) {
    startscreen = AppMainPage();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startscreen);
      case pages.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPageWidget());
      case pages.createAccPage:
        return MaterialPageRoute(builder: (_) => CreateAccountPage());
      case pages.onBoardingPage:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      case pages.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case pages.interestsScreen:
        return MaterialPageRoute(builder: (_) => InterestsPage());
      case pages.locationsScreen:
        return MaterialPageRoute(builder: (_) => PreferedLocations());
      case pages.accSuccessScreen:
        return MaterialPageRoute(builder: (_) => AccountSuccess());
      case pages.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case pages.emailCheckScreen:
        return MaterialPageRoute(builder: (_) => EmailCheckPage());
      case pages.createNewPasswordScreen:
        return MaterialPageRoute(builder: (_) => CreateNewPassword());
      case pages.passwordChangedSuccessScreen:
        return MaterialPageRoute(builder: (_) => PasswordChangeSuccess());
      case pages.appMainPageScreen:
        return MaterialPageRoute(builder: (_) => AppMainPage());
      case pages.jobSearchPageScreen:
        return MaterialPageRoute(builder: (_) => JobSearchPage());
      case pages.searchResultsPageScreen:
        return MaterialPageRoute(builder: (_) => SearchResultsPage());
      default:
        return null;
    }
  }
}
