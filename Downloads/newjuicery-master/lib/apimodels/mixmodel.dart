class Mix {
  bool? status;
  String? message;
  List<Data1>? data;

  Mix({this.status, this.message, this.data});

  Mix.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data1>[];
      json['data'].forEach((v) {
        data!.add(new Data1.fromJson(v));
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

class Data1 {
  String? mid;
  String? name;
  String? size;
  String? prize;
  String? image;

  Data1({this.mid, this.name, this.size, this.prize, this.image});

  Data1.fromJson(Map<String, dynamic> json) {
    mid = json['mid'];
    name = json['name'];
    size = json['size'];
    prize = json['prize'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mid'] = this.mid;
    data['name'] = this.name;
    data['size'] = this.size;
    data['prize'] = this.prize;
    data['image'] = this.image;
    return data;
  }
}
