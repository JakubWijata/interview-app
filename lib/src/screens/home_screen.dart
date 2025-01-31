import 'package:flutter/material.dart';
import 'package:interview_app/injectable/injectable.dart';
import 'package:interview_app/src/repositories/auth_repository/i_auth_repositories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            onTap: () {
              getIt.get<IAuthRepository>().signOut();
            },
          );
        },
      ),
    );
  }
}
