import 'user.dart';

void main() {
  User user1 = UserBuilder()
      .setFirstName("Hana")
      .setLastName("Essam")
      .setAge(22)
      .setPhone("+123456789")
      .build();

  print(user1);

  User user2 = UserBuilder()
      .setFirstName("Hana")
      .setLastName("Ahmed")
      .build(); 

  print(user2);
}
