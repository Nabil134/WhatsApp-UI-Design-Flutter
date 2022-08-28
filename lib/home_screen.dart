import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              ),
            ],
          ),
          actions: [
            SizedBox(width: 5),
            const Icon(Icons.search),
            SizedBox(width: 5),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('Setting'),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('Log Out'),
                      ),
                    ]),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ2fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('what\'s on your mind'),
                    trailing: Text('6:35 pm'),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Colors.green,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ2fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('35m ago'),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ2fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text(index / 2 == 0
                        ? 'You missed audio call'
                        : 'call time is 12:23'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}




/*
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ2fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
              ),
              title: Text('John Wick'),
              subtitle: Text('what\'s on your mind'),
              trailing: Text('6:35 pm'),
            ),
*/


