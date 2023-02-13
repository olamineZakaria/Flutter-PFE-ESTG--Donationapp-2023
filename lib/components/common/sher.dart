import 'package:flutter/material.dart';
import 'package:login_signup/Welcom.dart';

import 'colors2.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  bool isShowUsers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Form(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search_sharp,
                color: tx,
              ),
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey),
              hintText: "Cherche ici",
            ),
          ),
          // TextFormField(
          //   controller: searchController,
          //   decoration: const InputDecoration(labelText: 'Cherche Ici'),
          //   // onFieldSubmitted: (String _) {
          //   //   setState(() {
          //   //     isShowUsers = true;
          //   //   });
          //   //   print(_);
          //   // },
          // ),
        ),
      ),
      // body: isShowUsers
      //     ? FutureBuilder(
      //         future: FirebaseFirestore.instance
      //             .collection('users')
      //             .where(
      //               'username',
      //               isGreaterThanOrEqualTo: searchController.text,
      //             )
      //             .get(),
      //         builder: (context, snapshot) {
      //           if (!snapshot.hasData) {
      //             return const Center(
      //               child: CircularProgressIndicator(),
      //             );
      //           }
      //           return ListView.builder(
      //             itemCount: (snapshot.data! as dynamic).docs.length,
      //             itemBuilder: (context, index) {
      //               return InkWell(
      //                 onTap: () => Navigator.of(context).push(
      //                   MaterialPageRoute(
      //                     builder: (context) => Welcome(
      //                   //    uid: (snapshot.data! as dynamic).docs[index]['uid'],
      //                     ),
      //                   ),
      //                 ),
      //                 child: ListTile(
      //                   leading: CircleAvatar(
      //                     backgroundImage: NetworkImage(
      //                       (snapshot.data! as dynamic).docs[index]['photoUrl'],
      //                     ),
      //                     radius: 16,
      //                   ),
      //                   title: Text(
      //                     (snapshot.data! as dynamic).docs[index]['username'],
      //                   ),
      //                 ),
      //               );
      //             },
      //           );
      //         },
      //       )
      //     : FutureBuilder(
      //         future: FirebaseFirestore.instance
      //             .collection('posts')
      //             .orderBy('datePublished')
      //             .get(),
      //         builder: (context, snapshot) {
      //           if (!snapshot.hasData) {
      //             return const Center(
      //               child: CircularProgressIndicator(),
      //             );
      //           }

      //           return StaggeredGridView.countBuilder(
      //             crossAxisCount: 3,
      //             itemCount: (snapshot.data! as dynamic).docs.length,
      //             itemBuilder: (context, index) => Image.network(
      //               (snapshot.data! as dynamic).docs[index]['postUrl'],
      //               fit: BoxFit.cover,
      //             ),
      //             staggeredTileBuilder: (index) => MediaQuery.of(context)
      //                         .size
      //                         .width >
      //                     webScreenSize
      //                 ? StaggeredTile.count(
      //                     (index % 7 == 0) ? 1 : 1, (index % 7 == 0) ? 1 : 1)
      //                 : StaggeredTile.count(
      //                     (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
      //             mainAxisSpacing: 8.0,
      //             crossAxisSpacing: 8.0,
      //           );
      //         },
      //       ),
    );
  }
}
