class Credentials {
  String email;
  String phone;
  String password;

  Credentials({
    this.email = '',
    this.phone = '',
    this.password = '',
  });

  void setEmail(String email) {
    this.email = email;
  }

  void setPassword(String password) {
    this.password = password;
  }
}
