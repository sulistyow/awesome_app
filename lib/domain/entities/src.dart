import 'package:equatable/equatable.dart';

class SrcEntity extends Equatable {
  final String? original;
  final String? large2X;
  final String? large;
  final String? medium;
  final String? small;
  final String? portrait;
  final String? landscape;
  final String? tiny;

  SrcEntity({
    this.original,
    this.large2X,
    this.large,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });
  
  @override
  List<Object?> get props => [
    original,
    large2X,
    large,
    medium,
    small,
    portrait,
    landscape,
    tiny
  ];
}