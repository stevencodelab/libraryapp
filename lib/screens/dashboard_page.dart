import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'buku_page.dart'; // Import halaman buku_page.dart
import 'peminjaman_page.dart';
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'Dashboard Untuk Siswa',
          style: TextStyle(color: Colors.white, fontFamily: 'fantasy'),
        ),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile', style: TextStyle(fontFamily: 'fantasy')),
                ),
              ),
              PopupMenuItem<String>(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout', style: TextStyle(fontFamily: 'fantasy')),
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 'logout') {
                _showLogoutMenu(context);
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue.shade400, // Ubah warna sidebar di sini
          child: ListView(
            padding: EdgeInsets.zero,
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'Menu E-Library',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'fantasy',
                    ),
                  ),
                ),
                ExpansionTile(
                  leading: Icon(Icons.dashboard),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(fontFamily: 'fantasy'),
                  ),
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_right),
                      title: Text(
                        'Dashboard',
                        style: TextStyle(fontFamily: 'fantasy'),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.book),
                  title: Text(
                    'Buku',
                    style: TextStyle(fontFamily: 'fantasy'),
                  ),
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_right),
                      title: Text(
                        'Data Buku',
                        style: TextStyle(fontFamily: 'fantasy'),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BukuPage()), // Navigasi ke halaman buku_page.dart
                        );
                      },
                    ),
                  ],
                ),
                ExpansionTile(
  leading: Icon(Icons.assignment),
  title: Text(
    'Peminjaman',
    style: TextStyle(fontFamily: 'fantasy'),
  ),
  children: [
    ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(
        'Peminjaman',
        style: TextStyle(fontFamily: 'fantasy'),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PeminjamanPage()),
        );
      },
    ),
  ],
),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Wrap the Card with GestureDetector for clickability
            GestureDetector(
              onTap: () {
                // Action when the card is clicked
              },
              child: Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text(
                    'Informasi Buku',
                    style: TextStyle(fontFamily: 'fantasy'),
                  ),
                  subtitle: Text(
                    'Jumlah buku yang ada di perpustakaan.',
                    style: TextStyle(fontFamily: 'fantasy'),
                  ),
                ),
              ),
            ),
            // Add more widgets here as needed
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[700],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Copyright © stevenCodelab - ${DateTime.now().year}',
            style: TextStyle(color: Colors.white
, fontFamily: 'fantasy'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  // Method to show logout menu
  void _showLogoutMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout", style: TextStyle(fontFamily: 'fantasy')),
          content: Text(
            "Are you sure you want to logout?",
            style: TextStyle(fontFamily: 'fantasy'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "No",
                style: TextStyle(fontFamily: 'fantasy'),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                "Yes",
                style: TextStyle(fontFamily: 'fantasy'),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        );
      },
    );
  }
}
