class Person {
  final int age;
  final String name;
// 
  Person(this.age, this.name);
} 

void main() {
  final greeting = (String name) {
    return 'Hi $name';
  };

  saySomething(greeting);
}

void saySomething(Function(String) message) {
  print(message('Marcos'));
}
