part of 'user_social_bloc.dart';

sealed class UserSocialEvent {
  const UserSocialEvent();
}

class ResetData extends UserSocialEvent {}

class LoadSocialData extends UserSocialEvent {
  const LoadSocialData(this.client);

  final GraphQLClient client;
}

class LoadMoreData extends UserSocialEvent {
  const LoadMoreData({required this.client, required this.isFollowing});

  final GraphQLClient client;
  final bool isFollowing;
}

class ChangeType extends UserSocialEvent {
  const ChangeType({required this.isFollowing});

  final bool isFollowing;
}

class FollowUser extends UserSocialEvent {
  const FollowUser({required this.client, required this.userId});

  final GraphQLClient client;
  final int userId;
}

class UnfollowUser extends UserSocialEvent {
  const UnfollowUser({required this.client, required this.userId});

  final GraphQLClient client;
  final int userId;
}
