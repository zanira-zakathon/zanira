import 'package:freezed_annotation/freezed_annotation.dart';
part 'announcement.freezed.dart';
part 'announcement.g.dart';

//Tanggal, Kategori, Nominal, Detail, Button Delete and Edit
@freezed
class Announcement with _$Announcement {
  const factory Announcement(
          @JsonKey(name: 'id') int id,
          @JsonKey(name: 'title') String title,
          @JsonKey(name: 'text') String text,
          @JsonKey(name: 'created_at') DateTime createdAt,
          @JsonKey(name: 'updated_at') DateTime updatedAt,
          )=      _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
