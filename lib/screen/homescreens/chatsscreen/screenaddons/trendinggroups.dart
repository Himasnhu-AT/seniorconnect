import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/widget/devgroupchartcard.dart';

class TrendingGroupChat extends StatefulWidget {
  const TrendingGroupChat({Key? key}) : super(key: key);

  @override
  State<TrendingGroupChat> createState() => _TrendingGroupChatState();
}

class _TrendingGroupChatState extends State<TrendingGroupChat> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DevGroupChartCard(
          imageAddress: GlobalVariable.groupicon,
          groupName: 'Hello',
          memberDetails: '2900',
          id: '12',
          onTap: () => {},
        ),
        DevGroupChartCard(
          imageAddress: GlobalVariable.groupicon,
          groupName: 'Hello',
          memberDetails: '2900',
          id: '12',
          onTap: () => {},
        ),
        DevGroupChartCard(
          imageAddress: GlobalVariable.groupicon,
          groupName: 'Hello',
          memberDetails: '2900',
          id: '12',
          onTap: () => {},
        ),
        DevGroupChartCard(
          imageAddress: GlobalVariable.groupicon,
          groupName: 'Hello',
          memberDetails: '2900',
          id: '12',
          onTap: () => {},
        ),
      ],
    );
//     return Column(
//       children: [
//         DevGroupChatIcon(
//           id: '12',
//           imageAddress: GlobalVariable.groupicon,
//           groupName: 'App Development',
//           memberDetails: '29,000',
//           onTap: () => {},
//         ),
//         DevGroupChatIcon(
//           id: '12',
//           imageAddress: GlobalVariable.groupicon,
//           groupName: 'App Development',
//           memberDetails: '29,000',
//           onTap: () => {},
//         ),
//         DevGroupChatIcon(
//           id: '12',
//           imageAddress: GlobalVariable.groupicon,
//           groupName: 'App Development',
//           memberDetails: '29,000',
//           onTap: () => {},
//         ),
//         DevGroupChatIcon(
//           id: '12',
//           imageAddress: GlobalVariable.groupicon,
//           groupName: 'App Development',
//           memberDetails: '29,000',
//           onTap: () => {},
//         ),
//         DevGroupChatIcon(
//           id: '12',
//           imageAddress: GlobalVariable.groupicon,
//           groupName: 'App Development',
//           memberDetails: '29,000',
//           onTap: () => {},
//         ),
//       ],
//     );
//   }
  }
}
