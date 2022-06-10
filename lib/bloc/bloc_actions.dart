import 'package:flutter/foundation.dart';
import 'package:state_management/bloc/person.dart';

const persons1Url =
    'http://192.168.42.41:5500/state_management/api/persons1.json'; // localhost doesn't work use device up using ifconfig
const persons2Url =
    'http://192.168.42.41:5500/state_management/api/persons2.json';

typedef PersonsLoader = Future<Iterable<Person>> Function(String url);

@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonsAction extends LoadAction {
  final String url;
  final PersonsLoader loader;
  const LoadPersonsAction({required this.url, required this.loader}) : super();
}
