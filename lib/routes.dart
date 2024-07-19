import 'package:flutter_demo/main.dart';

dynamic routerList = [
  {
    "name": '首页',
    "path": '/',
    "builder": (context, state) => MyHomePage(title: 'Flutter Demo Home Page123', count: 10)
  },
  {
    "name": "新页面",
    "path": "new_page",
    "builder": (context, state) => const NewPage(),
  },
  {
    'name': "表单页",
    "path": "form_demo",
    "builder": (context, state) => const FormDemo()
  }
];