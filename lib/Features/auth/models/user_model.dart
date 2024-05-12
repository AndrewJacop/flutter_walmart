class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phoneNumber;
  String? avatar;
  bool isAdmin;
  bool isSeller;
  List<String> address;
  List<String> paymentMethod;
  List<String> userListsIds;
  List<String> cart;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.phoneNumber,
    this.avatar,
    this.isAdmin = false,
    this.isSeller = false,
    this.address = const [],
    this.paymentMethod = const [],
    this.userListsIds = const [],
    this.cart = const [],
  });

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        phoneNumber: json["phoneNumber"],
        avatar: json["avatar"] as String,
        isAdmin: json["isAdmin"] ?? false,
        isSeller: json["isSeller"] ?? false,
        address: List<String>.from(json["address"].map((x) => x)),
        paymentMethod: List<String>.from(json["paymentMethod"].map((x) => x)),
        userListsIds: List<String>.from(json["userListsIds"].map((x) => x)),
        cart: List<String>.from(json["cart"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "phoneNumber": phoneNumber,
        "avatar": avatar,
        "isAdmin": isAdmin,
        "isSeller": isSeller,
        "address": List<dynamic>.from(address.map((x) => x)),
        "paymentMethod": List<dynamic>.from(paymentMethod.map((x) => x)),
        "userListsIds": List<dynamic>.from(userListsIds.map((x) => x)),
        "cart": List<dynamic>.from(cart.map((x) => x)),
      };
}
