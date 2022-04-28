import 'package:fire_chat_application/UI/draft.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with TickerProviderStateMixin {
  int currentIndex = 0;
  late TabController tabCont;

  @override
  void initState() {
    super.initState();
    tabCont = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(length: 2, child: 
    

     Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        children: <Widget>[_profile(),  _tabbar(), _newTabbar()],
      ),
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
      return const TabBar(
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
      );
    
  }

  Widget _newTabbar() {
    return Expanded(
      child: TabBarView(
        children: [
          // first tab bar view widget
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Bike',
              ),
            ),
          ),

          // second tab bar viiew widget
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text(
                'Car',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
