import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];

// bagismiz metodlarimizi yazdigimz kisim
List<SingleChildCloneableWidget> independentServices = [];

// bagimli nesnelerimizin oldugu yer
List<SingleChildCloneableWidget> dependentServices = [];

// sayfamizda ui kisminda dinleyecegimiz islemlermizin oldugu yer
List<SingleChildCloneableWidget> uiConsumableProviders = [];
