import 'package:equatable/equatable.dart';

abstract class ReplyEvent extends Equatable {
  const ReplyEvent();
}

class GetReplyEvent extends ReplyEvent {
  final String id;
  const GetReplyEvent({
    required this.id,
  });
  @override
  List<Object?> get props => [id];
}
