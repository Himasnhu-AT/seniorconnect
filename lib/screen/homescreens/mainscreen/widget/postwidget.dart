import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/widget/post.dart';

import '../../../../constants/global_variables.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalVariable.lightbackgroundColor,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(post.profileImage),
                ),
                const SizedBox(width: 10),
                Text(
                  post.username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Spacer(), // Add space to push the dots icon to the right
                PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'delete',
                      child: Text('Delete Post'),
                    ),
                    const PopupMenuItem(
                      value: 'share',
                      child: Text('Share Post'),
                    ),
                    // Add more menu items if needed
                  ],
                  onSelected: (value) {
                    // Implement actions based on the selected value
                    if (value == 'delete') {
                      // Delete post logic
                    } else if (value == 'share') {
                      // Share post logic
                    }
                  },
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              post.caption,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              post.postImage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          //
          // bottom buttons
          //
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // add icon like
                  Icon(
                    size: 30,
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  // thumbs down icon
                  Icon(
                    size: 30,
                    Icons.thumb_down_alt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  // add icon comment
                  Icon(
                    size: 30,
                    Icons.comment_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  // add icon share
                  Icon(
                    size: 30,
                    Icons.share_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  // add icon save],
                  Icon(
                    size: 30,
                    Icons.save_outlined,
                    color: Colors.white,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
