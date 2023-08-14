import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/widget/post.dart';

import '../../../../constants/global_variables.dart';

class PostWidget extends StatefulWidget {
  final Post post;

  const PostWidget({super.key, required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
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
                  radius: 20,
                  backgroundImage: AssetImage(widget.post.profileImage),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.post.username,
                  style: const TextStyle(
                    color: GlobalVariable.textcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle Save button logic
                      },
                      iconSize: 30,
                      icon: const Icon(
                        Icons.save_alt_outlined,
                        color: GlobalVariable.textcolor,
                      ),
                    ),
                  ],
                ),
                PopupMenuButton(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'delete',
                      child: Text(
                        'Report Post',
                        style: TextStyle(
                            color: GlobalVariable.textcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'share',
                      child: Text(
                        'Share Post',
                        style: TextStyle(
                            color: GlobalVariable.textcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
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
                  iconSize: 30,
                  icon: const Icon(
                    Icons.more_vert,
                    color: GlobalVariable.textcolor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.post.caption,
              style: const TextStyle(
                color: GlobalVariable.textcolor,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.post.postImage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          //
          // bottom buttons
          //
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                // Like Button
                BottomButton(
                    number: widget.post.likes,
                    icon: Icons.thumb_up_alt_outlined,
                    onTapcallback: () => {
                          setState(() {
                            // widget.post.likes++; // Increment comments
                          })
                        }),
                // Dislike Button
                BottomButton(
                    number: widget.post.dislike,
                    icon: Icons.thumb_down_alt_outlined,
                    onTapcallback: () => {}),
                // Comment Button
                BottomButton(
                    number: widget.post.comments,
                    icon: Icons.comment_outlined,
                    onTapcallback: () => {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget BottomButton({
  int? number,
  required IconData icon,
  required Function onTapcallback,
}) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.transparent,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            number.toString(),
            style: const TextStyle(
              color: GlobalVariable.textcolor,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: onTapcallback as void Function()?,
            child: Icon(
              icon,
              size: 20,
              color: GlobalVariable.textcolor,
            ),
          ),
        ],
      ),
    ),
  );
}
