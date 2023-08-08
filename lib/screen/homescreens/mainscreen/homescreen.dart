import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/widget/post.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/widget/postwidget.dart';

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
    ),
    Post(
      username: 'Test 1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.postphoto,
      caption: 'Caption for profile photo',
    ),
    Post(
      username: 'Test 1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.splash1,
      caption: 'This is splash 1 for app',
    ),
    Post(
      username: 'username1',
      profileImage: GlobalVariable.profilephoto,
      postImage: GlobalVariable.profilephoto,
      caption: 'Caption for profile photo',
    ),
    // Add more post
    // syntx:
    // Post(
    //   username: '',
    //   profileImage: ,
    //   postImage: ,
    //   caption: '',
    // ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalVariable.backgroundColor,
          title: const Text(
            'Senior Connect',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          color: GlobalVariable.backgroundColor,
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PostWidget(post: posts[index]);
            },
          ),
        ),
      ),
    );
  }
}

// OLD HOME SCREEN:
// // ignore_for_file: sized_box_for_whitespace
// import 'package:flutter/material.dart';
// import 'package:seniorconnect/constants/Global_Variables.dart';
// import 'package:seniorconnect/screen/chatscreens/trendinggroups.dart';
// import 'package:seniorconnect/screen/chatscreens/yourmessages.dart';

// class HomeScreen extends StatefulWidget {
//   static const String routeName = '/home';
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Welcome to Senior Connect',
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: GlobalVariable.backgroundColor,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             const Text(
//               'Trending Groups',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Container(
//               // width: double.infinity,
//               height: 200,
//               child: const SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: TrendingGroupChat(),
//               ),
//             ),
//             //
//             //
//             const SizedBox(height: 20),
//             //
//             //
//             const Text(
//               'Your Messages',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Container(
//               width: double.infinity,
//               height: 400,
//               child: const SingleChildScrollView(
//                 child: UsersMessages(numberOfChats: 5),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
