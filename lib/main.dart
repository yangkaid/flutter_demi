import 'package:flutter/material.dart';
import 'package:flutter_demo/router/router.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      routerConfig: router,
    );
  }
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
      body: Column(
        children: <Widget>[
          Text('这是一个新路由'),
          TextButton.icon(
              onPressed: () {
                print('handle');
                // Navigator.pushNamed(context, 'FormDemo');
                context.goNamed('Home', queryParams: { 'count': '200'});
              },
              label: const Text('返回首页'),
              icon: Icon(Icons.home),
            )
        ],
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
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordCOntroller = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('表单'),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _usernameController,
                decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: '请输入用户名',
                    icon: Icon(Icons.person)),
                validator: (v) {
                  return v!.trim().isNotEmpty ? null : '用户名不能为空';
                },
              ),
              TextFormField(
                controller: _passwordCOntroller,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    icon: Icon(Icons.password)),
                obscureText: true,
                validator: (v) {
                  return v!.trim().length > 5 ? null : '密码不少于6位';
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('登录'),
                      ),
                      onPressed: () {
                        print(_formKey.currentState);
                        if ((_formKey.currentState as FormState).validate()) {
                          print('验证通过');
                        }
                      },
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
