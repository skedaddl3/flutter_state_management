import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:state_management/bloc/person.dart';
import 'package:state_management/bloc/persons_bloc.dart';

const mockedPersons1 = [
  Person(
    age: 20,
    name: 'Foo',
  ),
  Person(
    age: 30,
    name: 'Bar',
  ),
];

const mockedPersons2 = [
  Person(
    age: 20,
    name: 'Foo',
  ),
  Person(
    age: 30,
    name: 'Bar',
  ),
];

Future<Iterable<Person>> mockGetPersons1(String url) =>
    Future.value(mockedPersons1);

Future<Iterable<Person>> mockGetPersons2(String url) =>
    Future.value(mockedPersons2);

void main() {
  group('Testing BLOC', () {
    // tests
    late PersonsBloc bloc;

    setUp(() {
      bloc = PersonsBloc();
    });
  });
}
