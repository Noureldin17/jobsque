import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/business_logic/cubit/job_listings_cubit.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/screens/applied_screen_routes.dart/AppliedStepOne.dart';
import 'package:jobsque/presentation/screens/applied_screen_routes.dart/AppliedStepThree.dart';
import 'package:jobsque/presentation/screens/applied_screen_routes.dart/AppliedStepTwo.dart';
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
import 'package:jobsque/presentation/screens/profile_screen_routes/ChangePasswordPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/EditProfilePage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/EducationPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/EmailAdressPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/ExperiencePage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/HelpCenterPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/LanguageSettingPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/NotificationsSettingsPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/PersonalDetailsPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/PhoneNumberPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/PhoneNumberVerification.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/PortfolioUploadPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/PrivacyPolicy.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/ProfileCompletionPage.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/SecuritySettings.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/SixDigitCode.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/TermsAndConditions.dart';
import 'package:jobsque/presentation/screens/profile_screen_routes/TwoStepVerificationPage.dart';

class AppRouter {
  late Widget startscreen;

  Route? onGenerateRoute(RouteSettings settings) {
    startscreen = SplashScreen();

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
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: ((context) => JobListingsCubit()),
                  child: AppMainPage(),
                ));
      case pages.Job_Search_Page:
        return MaterialPageRoute(builder: (_) => JobSearchPage());
      case pages.Job_Details_Page:
        final JobListing listing = settings.arguments as JobListing;
        return MaterialPageRoute(
            builder: (_) => JobDetailPage(
                  listing: listing,
                ));
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
      case pages.Email_Address_Page:
        return MaterialPageRoute(builder: (_) => EmailAddressPage());
      case pages.Phone_Number_Page:
        return MaterialPageRoute(builder: (_) => PhoneNumberPage());
      case pages.Change_Password_Page:
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());
      case pages.Two_Step_Verification_Page:
        return MaterialPageRoute(builder: (_) => TwoStepVerification());
      case pages.Phone_Number_Verification_Page:
        return MaterialPageRoute(builder: (_) => PhoneNumberVerification());
      case pages.SixDigit_Code_Page:
        return MaterialPageRoute(builder: (_) => SixDigitCode());
      case pages.Help_Center_Page:
        return MaterialPageRoute(builder: (_) => HelpCenterPage());
      case pages.TermsAndConditions_Page:
        return MaterialPageRoute(builder: (_) => TermsAndConditions());
      case pages.Privacy_Policy_Page:
        return MaterialPageRoute(builder: (_) => PrivacyPolicy());
      case pages.Applied_Step_One_Page:
        return MaterialPageRoute(builder: (_) => AppliedStepOne());
      case pages.Applied_Step_Two_Page:
        return MaterialPageRoute(builder: (_) => AppliedStepTwo());
      case pages.Applied_Step_Three_Page:
        return MaterialPageRoute(builder: (_) => AppliedStepThree());
      case pages.Complete_Profile_Page:
        return MaterialPageRoute(builder: (_) => ProfileCompletionPage());
      case pages.Personal_Details_Page:
        return MaterialPageRoute(builder: (_) => PersonalDetailsPage());
      case pages.Education_Page:
        return MaterialPageRoute(builder: (_) => EducationFormPage());
      case pages.Experience_Page:
        return MaterialPageRoute(builder: (_) => ExperiencePage());
      default:
        return null;
    }
  }
}
