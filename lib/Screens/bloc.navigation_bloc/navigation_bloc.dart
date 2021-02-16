import 'package:bloc/bloc.dart';
import 'package:tester/Screens/AcademicStaff/CourseAS.dart';
import 'package:tester/Screens/AcademicStaff/ReportAS.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/Student/homePageStudent.dart';
import 'package:tester/Screens/profile.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyProfileClickedEvent,
  RequestClickedEvent,
  SettingsClickedEvent,
  LogoutClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => homePageAdministrator();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield homePageAdministrator();
        break;
      case NavigationEvents.MyProfileClickedEvent:
        yield Profile();
        break;
      case NavigationEvents.RequestClickedEvent:
        yield ReportAS();
        break;
    }
  }
}
