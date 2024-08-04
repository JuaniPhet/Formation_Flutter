import 'package:flutter/material.dart';
import 'package:flutter_third/counter/counter_screen.dart';
import 'package:flutter_third/form/signup_screen.dart';
import 'package:flutter_third/post/presentation/post_screen.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Training Assingnements"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("APIs"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PostScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Form"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Counter App"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CounterScreen(),
                ),
              );
            },
          ),
          // ListTile(
          //   title: Text("Settings"),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   onTap: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => const SettingScreen(),
          //       ),
          //     );
          //   },
          // )
        ],
      ),
    );
  }
}
