// import 'package:flutter/material.dart';

// class UserCard extends StatelessWidget {
//   // กำหนดตัวแปรไว้รับค่า (เหมือนฟังก์ชันที่รับพารามิเตอร์)
//   final String name;
//   final String imageUrl;

//   const UserCard({super.key, required this.name, required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     // เอา Widget มาตรฐานมาประกอบกันตรงนี้
//     return Card(
//       elevation: 4,
//       margin: const EdgeInsets.all(10),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             CircleAvatar(
//               backgroundImage: NetworkImage(imageUrl),
//               radius: 30,
//             ),
//             const SizedBox(width: 20),
//             Text(
//               name,
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.name, required this.imageUrl});

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 30,
            ),
            const SizedBox(width: 20),
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


