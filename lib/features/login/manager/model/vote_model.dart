class VoteModel {
  String? id;
  List<Values>? values;
  VoteModel({this.id, this.values});

  VoteModel.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    if (json['$values'] != null) {
      values = <Values>[];
      json['$values'].forEach((v) {
        values!.add(new Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    if (this.values != null) {
      data['$values'] = this.values!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Values {
  String? id;
  String? name;
  String? party;
  String? bio;
  int? voteCount;
  String? image;
  String? imageDataType;
  int? addedByUserId;
  int? electionId;

  Values({
    this.id,
    this.name,
    this.party,
    this.bio,
    this.voteCount,
    this.image,
    this.imageDataType,
    this.addedByUserId,
    this.electionId,
  });

  Values.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    party = json['party'];
    bio = json['bio'];
    voteCount = json['voteCount'];
    image = json['image'];
    imageDataType = json['imageDataType'];
    addedByUserId = json['addedByUserId'];

    electionId = json['electionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['party'] = this.party;
    data['bio'] = this.bio;
    data['voteCount'] = this.voteCount;
    data['image'] = this.image;
    data['imageDataType'] = this.imageDataType;
    data['addedByUserId'] = this.addedByUserId;

    data['electionId'] = this.electionId;

    return data;
  }
}
