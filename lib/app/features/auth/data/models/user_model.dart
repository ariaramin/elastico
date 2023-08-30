import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String id,
    required String avatar,
    required String name,
    required String username,
    required bool verified,
  }) : super(
          id: id,
          avatar: avatar,
          name: name,
          username: username,
          verified: verified,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      avatar:
          '${Constants.baseUrl}files/${json['collectionId']}/${json['id']}/${json['avatar']}',
      name: json['name'],
      username: json['username'],
      verified: json['verified'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'avatar': avatar,
      'name': name,
      'username': username,
      'verified': verified,
    };
  }
}
