import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/chatmaingroup.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/widget/post.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/widget/postwidget.dart';
import 'package:seniorconnect/screen/popupscreen/imageviewscreen.dart';
import 'package:seniorconnect/screen/popupscreen/postviewscreen.dart';

import '../../../constants/global_variables.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  final List<Post> posts = [
    Post(
      username: 'username1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.splash2,
      caption: 'This is splash 2 for app',
      likes: 5,
      comments: 2,
      shares: 4,
      dislike: 3,
    ),
    Post(
      username: 'Test 1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.postphoto,
      caption: 'Caption for profile photo',
      likes: 20,
      comments: 3,
      shares: 23,
      dislike: 2,
    ),
    Post(
      username: 'Test 1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.splash1,
      caption: 'This is splash 1 for app',
      likes: 34,
      comments: 3,
      shares: 234,
      dislike: 23,
    ),
    Post(
      username: 'username1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.profilephoto,
      caption: 'Caption for profile photo',
      likes: 23,
      comments: 23,
      shares: 234,
      dislike: 24,
    )
    // Add more posts
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalVariable.backgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Senior Connect',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: GlobalVariable.textcolor,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle notifications
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShowChatMainScreen(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.telegram_outlined,
                  color: GlobalVariable.textcolor,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: GlobalVariable.backgroundColor,
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12, // Number of stories
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const BuildStoryAddButton();
                  } else {
                    return const BuildStoryItem();
                  }
                },
              ),
            ),
            Expanded(
              child: Container(
                color: GlobalVariable.backgroundColor,
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return PostWidget(post: posts[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildStoryAddButton extends StatelessWidget {
  const BuildStoryAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle uploading your own story
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PostScreenPopUp(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: GlobalVariable.cardbackground,
        ),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class BuildStoryItem extends StatelessWidget {
  const BuildStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle story item
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ImageViewScreen(
              imageAddress: GlobalVariable.statusphoto,
              title: 'status',
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          image: const DecorationImage(
            image: AssetImage(GlobalVariable.statusphoto),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
