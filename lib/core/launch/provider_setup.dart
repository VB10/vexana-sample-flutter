import 'package:provider/provider.dart';
import 'package:vexana/core/model/user.dart';
import 'package:vexana/core/service/login_serive.dart';
import 'package:vexana/core/service/profile_service.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumeProviders
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(
    value: LoginService(),
  )
];

List<SingleChildCloneableWidget> dependentServices = [
  ProxyProvider<LoginService, ProfileService>(
    builder: (context, api, profileService) => ProfileService(api),
  )
];

List<SingleChildCloneableWidget> uiConsumeProviders = [
  StreamProvider<User>(
    builder: (context) => Provider.of<LoginService>(context,listen: false).user,
  )
];
