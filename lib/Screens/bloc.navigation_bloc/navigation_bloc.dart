import 'package:bloc/bloc.dart';
import 'package:tester/Screens/AcademicStaff/CourseAS.dart';
import 'package:tester/Screens/AcademicStaff/ReportAS.dart';
import 'package:tester/Screens/Administrator/Requests.dart';
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
  /*

  if (user== "administrator"){
    NavigationStates get initialState => homePageAdministrator();
  }else if (user == "AcademicStaff"){
    NavigationStates get initialState => CourseAS();
  }else{
    NavigationStates get initialState => HomePageStudent();
  }

  */
  NavigationStates get initialState => homePageAdministrator();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        /* if (user == "administrator") {
          yield homePageAdministrator();
        } else if (user == "AcademicStaff") {
          yield CourseAS();
        } else {
          yield HomePageStudent();
        }
        */
        break;
      case NavigationEvents.MyProfileClickedEvent:
        yield Profile();
        break;
      case NavigationEvents.RequestClickedEvent:
        yield Requests();
        break;
      case NavigationEvents.SettingsClickedEvent:
        // TODO: Handle this case.
        break;
      case NavigationEvents.LogoutClickedEvent:
        // TODO: Handle this case.
        break;
    }
  }
}
