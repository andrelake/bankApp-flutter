class User {
  final String name;
  final String surname;
  final String username;
  final String password;

  User(this.name, this.surname, this.username, this.password);

  @override
  String toString() {
    return 'User{name: $name, surname: $surname, username: $username, password: $password}';
  }
}