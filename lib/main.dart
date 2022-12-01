import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:service_finder_application_flutter/myTheme.dart';

final routes = RouteMap(routes: {
  '/': (_) => const MaterialPage(
        child: HomePage(
          title: 'Titles',
        ),
        // paths: ['/feed', '/settings'],
      ),

  // '/feed': (_) => MaterialPage(child: FeedPage()),
  // '/settings': (_) => MaterialPage(child: SettingsPage()),
  // '/feed/profile/:id': (info) => MaterialPage(
  //   child: ProfilePage(id: info.pathParameters['id'])
  // ),
});

void main() {
  runApp(
    MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: ServiceProviderThemes.lightTheme,
      darkTheme: ServiceProviderThemes.lightTheme,
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      routeInformationParser: const RoutemasterParser(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
