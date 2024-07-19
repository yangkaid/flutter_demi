import 'package:flutter/material.dart';
import 'package:flutter_demo/router/router.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final router = GoRouter(
    initialLocation: '/',
    routes: $appRoutes,
    redirect: (context, state) {
      const isAuthenticated = true;
      if (isAuthenticated) {
        print(state);
      }
    },
  );
  return MaterialApp.router(
    RouterConfig: router,
  )
}


class Echo extends StatelessWidget {
  const Echo(
      {Key? key, required this.text, this.backgroundColor = Colors.amberAccent})
      : super(key: key);
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新路由'),
      ),
      body: const Center(
        child: Text('这是一个新路由'),
      ),
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: '用户名', prefixIcon: Icon(Icons.ac_unit)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码", prefixIcon: Icon(Icons.contact_mail_sharp)),
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  print('login');
                },
                child: Text('登录'))
          ],
        ),
      ),
    );
  }
}
