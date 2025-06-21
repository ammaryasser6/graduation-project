class RegisterModel {
  String? id;
  String? message;
  User? user;

  RegisterModel({this.id, this.message, this.user});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {

  int? id;
  String? email;
  String? password;
  String? role;
  Voter? voter;

  User(
      {
        this.id,
        this.email,
        this.password,
        this.role,
        this.voter,
      });

  User.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    id = json['id'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    voter = json['voter'] != null ? new Voter.fromJson(json['voter']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['role'] = this.role;
    if (this.voter != null) {
      data['voter'] = this.voter!.toJson();
    }


    return data;
  }
}

class Voter {
  int? id;
  String? name;
  String? nationalId;
  int? electionType;
  String? selfiePath;
  String? idCardPath;
  bool? hasVoted;
  String? dateOfBirth;
  String? nationalIdPhoto;
  String? nationalIdPhotoDataType;
  String? selfiePhoto;
  String? selfiePhotoDataType;
  int? userId;
  User? user;
  int? provinceId;
  Null? province;

  Voter(
      {this.id,
        this.name,
        this.nationalId,
        this.electionType,
        this.selfiePath,
        this.idCardPath,
        this.hasVoted,
        this.dateOfBirth,
        this.nationalIdPhoto,
        this.nationalIdPhotoDataType,
        this.selfiePhoto,
        this.selfiePhotoDataType,
        this.userId,
        this.user,
        this.provinceId,
        this.province});

  Voter.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    id = json['id'];
    name = json['name'];
    nationalId = json['nationalId'];
    electionType = json['electionType'];
    selfiePath = json['selfiePath'];
    idCardPath = json['idCardPath'];
    hasVoted = json['hasVoted'];
    dateOfBirth = json['dateOfBirth'];
    nationalIdPhoto = json['nationalIdPhoto'];
    nationalIdPhotoDataType = json['nationalIdPhotoDataType'];
    selfiePhoto = json['selfiePhoto'];
    selfiePhotoDataType = json['selfiePhotoDataType'];
    userId = json['userId'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    provinceId = json['provinceId'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['id'] = this.id;
    data['name'] = this.name;
    data['nationalId'] = this.nationalId;
    data['electionType'] = this.electionType;
    data['selfiePath'] = this.selfiePath;
    data['idCardPath'] = this.idCardPath;
    data['hasVoted'] = this.hasVoted;
    data['dateOfBirth'] = this.dateOfBirth;
    data['nationalIdPhoto'] = this.nationalIdPhoto;
    data['nationalIdPhotoDataType'] = this.nationalIdPhotoDataType;
    data['selfiePhoto'] = this.selfiePhoto;
    data['selfiePhotoDataType'] = this.selfiePhotoDataType;
    data['userId'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['provinceId'] = this.provinceId;
    data['province'] = this.province;
    return data;
  }
}

class RegisteUser {
  String? ref;

  RegisteUser({this.ref});

  RegisteUser.fromJson(Map<String, dynamic> json) {
    ref = json['$ref'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$ref'] = this.ref;
    return data;
  }
}

