import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, String>> chats = [
    {'name': 'Aïcha', 'message': 'Salut ! Comment tu vas ?', 'time': '20:30'},
    {'name': 'Mercier', 'message': 'On se voit ce soir ?', 'time': 'Hier'},
    {'name': 'Fatou', 'message': 'Tu as reçu les documents ?', 'time': '08:15'},
    {'name': 'Lelo', 'message': 'Salut ! Comment tu vas ?', 'time': '19:30'},
    {'name': 'Gloire', 'message': 'On se voit ce soir ?', 'time': 'Hier'},
    {
      'name': 'Mohamed',
      'message': 'Tu as reçu les documents ?',
      'time': '08:15',
    },
    {'name': 'Aïcha', 'message': 'Salut ! Comment tu vas ?', 'time': '00:30'},
    {'name': 'Jean', 'message': 'On se voit ce soir ?', 'time': 'Hier'},
    {'name': 'Fatou', 'message': 'Tu as reçu les documents ?', 'time': '09:05'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text(
            "Leloeduk",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUTS"),
              Tab(text: "APPELS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemCount: chats.length,
              separatorBuilder: (_, __) => Divider(height: 0.5),
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: Text(chat['name']![0]),
                  ),
                  title: Text(chat['name']!),
                  subtitle: Text(chat['message']!),
                  trailing: Text(chat['time']!),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatDetailScreen(name: chat['name']!),
                      ),
                    );
                  },
                );
              },
            ),
            Center(child: Text("Aucun statut")),
            Center(child: Text("Aucun appel")),
          ],
        ),
      ),
    );
  }
}

class ChatDetailScreen extends StatelessWidget {
  final String name;

  const ChatDetailScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name), backgroundColor: Colors.blue.shade900),
      body: Center(child: Text("Conversation avec $name")),
    );
  }
}
