class Post {
  final String username;
  final String profileImage;
  final String postImage;
  final String caption;
  final int likes;
  final int comments;
  final int shares;
  final int dislike;

  Post({
    required this.username,
    required this.profileImage,
    required this.postImage,
    required this.caption,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.dislike,
  });
}
