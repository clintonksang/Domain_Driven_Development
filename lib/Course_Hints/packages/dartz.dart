import 'dart:math';

import 'package:dartz/dartz.dart';

class Person {
  final int age;
  final String name;
// 
  Person(this.age, this.name);
} 

// Traditionally 
void main() {
  final greeting = (String name) {
    return 'Hi $name';
  };

  saySomething(greeting);
}

void saySomething(Function(String) message) {
  print(message('Marcos'));
}

// With Dartz Package 
Either<int, String> getPersonData(Person person) {
  final returnName = Random().nextBool();

  if (returnName) {
    return Right(person.name);
  } else {
    return Left(person.age);
  }
}

// or
// void main() {
//   final me = Person(21, 'Marcos');

//   final either = getPersonData(me);

//   either.fold(
//     (age) => print('Your age is $age'),
//     (name) => print('Your name is $name'),
//   );
// }

// Your age is 21
// Your name is Marcos