class Greens {
  bool? status;
  String? message;
  List<Data2>? data;

  Greens({this.status, this.message, this.data});

  Greens.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data2>[];
      json['data'].forEach((v) {
        data!.add(new Data2.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data2{
  String? gid;
  String? name;
  String? size;
  String? prize;
  String? image;

  Data2({this.gid, this.name, this.size, this.prize, this.image});

  Data2.fromJson(Map<String, dynamic> json) {
    gid = json['gid'];
    name = json['name'];
    size = json['size'];
    prize = json['prize'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gid'] = this.gid;
    data['name'] = this.name;
    data['size'] = this.size;
    data['prize'] = this.prize;
    data['image'] = this.image;
    return data;
  }
}
