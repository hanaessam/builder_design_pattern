class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  // pruvate constructor to prevent creating an instance of User 
  User._({required this.firstName, required this.lastName, this.age, this.phone});

  // factory constructor to create an instance of User
  factory User.fromBuilder(UserBuilder builder) {
    return User._(
      firstName: builder.firstName!,
      lastName: builder.lastName!,
      age: builder.age,
      phone: builder.phone,
    );
  }

  // override toString method to print the User object
  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName, age: $age, phone: $phone)';
  }
}



// user builder class to build the user instance
class UserBuilder {
  String? firstName;
  String? lastName;
  int? age;
  String? phone;

  // setters to set the values of the user
  UserBuilder setFirstName(String firstName) {
    this.firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    this.lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    this.age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    this.phone = phone;
    return this;
  }

  // build method to create the user instance
  User build() {
    if (firstName == null || lastName == null) {
      throw Exception("First name and last name are required!");
    }
    return User.fromBuilder(this);
  }
}
