import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        children: <Widget>[_profile(), _tabbar()],
      ),
    );
  }

  Widget _profile() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: const <Widget>[
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Ravi seta",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _tabbar() {
    return const DefaultTabController(
      length: 2,
      child: TabBar(
        tabs: [
          Tab(
            icon: Icon(
              Icons.grid_on_sharp,
              color: Colors.black,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.grid_on_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
