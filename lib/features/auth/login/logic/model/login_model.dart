class LoginModel {
  String? id;
  String? message;
  String? role;
  String? token;

  LoginModel({this.id, this.message, this.role, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    message = json['message'];
    role = json['role'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['message'] = this.message;
    data['role'] = this.role;
    data['token'] = this.token;
    return data;
  }
}
