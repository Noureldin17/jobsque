import 'package:flutter/material.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/NotificationsPage.dart';
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
import 'package:jobsque/presentation/screens/home_screen_routes/JobApplicationStepOne.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/JobApplicationStepThree.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/JobApplicationStepTwo.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/JobDetailPage.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/JobSearchPage.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/SearchResultsPage.dart';
import 'package:jobsque/presentation/screens/home_screen_routes/SubmittedApplicationPage.dart';
import 'package:jobsque/presentation/reusable_components/messages/ChatScreenView.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/EditProfilePage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/LanguageSettingPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/NotificationsSettingsPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/PortfolioUploadPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/SecuritySettings.dart';

class AppRouter {
  late Widget startscreen;

  Route? onGenerateRoute(RouteSettings settings) {
    startscreen = AppMainPage();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startscreen);
      case pages.Login_Page:
        return MaterialPageRoute(builder: (_) => LoginPageWidget());
      case pages.Create_Account:
        return MaterialPageRoute(builder: (_) => CreateAccountPage());
      case pages.On_Boarding:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      case pages.Splash_Screen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case pages.Interests_Select:
        return MaterialPageRoute(builder: (_) => InterestsPage());
      case pages.Locations_Select:
        return MaterialPageRoute(builder: (_) => PreferedLocations());
      case pages.Account_Success:
        return MaterialPageRoute(builder: (_) => AccountSuccess());
      case pages.Reset_Password:
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case pages.Email_Check:
        return MaterialPageRoute(builder: (_) => EmailCheckPage());
      case pages.Create_New_Password:
        return MaterialPageRoute(builder: (_) => CreateNewPassword());
      case pages.Password_Changed_Success:
        return MaterialPageRoute(builder: (_) => PasswordChangeSuccess());
      case pages.App_Main_Page:
        return MaterialPageRoute(builder: (_) => AppMainPage());
      case pages.Job_Search_Page:
        return MaterialPageRoute(builder: (_) => JobSearchPage());
      case pages.Job_Details_Page:
        return MaterialPageRoute(builder: (_) => JobDetailPage());
      case pages.Search_Results_Page:
        return MaterialPageRoute(builder: (_) => SearchResultsPage());
      case pages.Job_Application_Step_One:
        return MaterialPageRoute(builder: (_) => JobApplicationStepOne());
      case pages.Job_Application_Step_Two:
        return MaterialPageRoute(builder: (_) => JobApplicationStepTwo());
      case pages.Job_Application_Step_Three:
        return MaterialPageRoute(builder: (_) => JobApplicationStepThree());
      case pages.Job_Application_Submitted:
        return MaterialPageRoute(builder: (_) => ApplicationSubmittedPage());
      case pages.Chat_View_Screen:
        return MaterialPageRoute(builder: (_) => ChatViewScreen());
      case pages.Notifications_Page:
        return MaterialPageRoute(builder: (_) => NotificationsPage());
      case pages.Edit_Profile_Page:
        return MaterialPageRoute(builder: (_) => EditProfilePage());
      case pages.Portfolio_Upload_Page:
        return MaterialPageRoute(builder: (_) => PortfolioUploadPage());
      case pages.Language_Setting_Page:
        return MaterialPageRoute(builder: (_) => LanguageSetting());
      case pages.Notification_Setting_Page:
        return MaterialPageRoute(builder: (_) => NotificationsSettings());
      case pages.Security_Setting_Page:
        return MaterialPageRoute(builder: (_) => SecuritySettings());
      default:
        return null;
    }
  }
}
