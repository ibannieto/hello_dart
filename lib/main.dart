import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Learn Gaelic';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      initialRoute: '/',
      home: MyHomePage(title: appTitle),
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/begineers': (context) => BeginnersScreen(),
        '/begineers': (context) => AnotherView(),
        '/usegaelic': (context) => UseGaelicScreen(),
        '/watchgaelic': (context) => WatchGaelicScreen(),
        '/grammar': (context) => GrammarScreen(),
        '/resources': (context) => ResourcesScreen(),
        '/tools': (context) => ToolsScreen(),
        '/dictionary': (context) => DictionaryScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Fàilte gu learngaelic, am prìomh àite air-loidhne airson a h-uile duine le ùidh ann a bhith ag ionnsachadh gàidhlig.')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Iban Nieto'),
              accountEmail: Text('iban.nieto@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/715304351154221056/Vv6eJM7C_400x400.jpg'),
              ),
              // Image.network('https://pbs.twimg.com/profile_images/715304351154221056/Vv6eJM7C_400x400.jpg'),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Beginners'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/begineers');
              },
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('Use Gaelic'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/usegaelic');
              },
            ),
            ListTile(
              leading: Icon(Icons.ondemand_video),
              title: Text('Watch Gaelic'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/watchgaelic');
              },
            ),
            ListTile(
              leading: Icon(Icons.spellcheck),
              title: Text('Grammar'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/grammar');
              },
            ),
            ListTile(
              leading: Icon(Icons.find_in_page),
              title: Text('Resources'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/resources');
              },
            ),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Tools'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/tools');
              },
            ),
            ListTile(
              leading: Icon(Icons.spellcheck),
              title: Text('Dictionary'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/dictionary');
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Then close the drawer
                Navigator.pushNamed(context, '/settings');
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Begineers Screen
class BeginnersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Begineers Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Use Gaelic Screen
class UseGaelicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use Gaelic Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Watch Gaelic Screen
class WatchGaelicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch Gaelic Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Grammar Screen
class GrammarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grammar Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Resources Screen
class ResourcesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Tools Screen
class ToolsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tools Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Dictionary Screen
class DictionaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Settings Screen
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

// Another view
class AnotherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(15, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
