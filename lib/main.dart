import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom_navbar.dart';
import 'core/flutter_no_sql.dart';
import 'ui/theme/theme.dart';

void main() {
  runApp(const MyApp());
  Future.delayed(const Duration(seconds: 0), () async {
    WidgetsFlutterBinding.ensureInitialized();
    await FlutterNoSql.initFlutter();
    WidgetsFlutterBinding.ensureInitialized();
    // await checkToken();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: AppColors.mainColor,
        fontFamily: AppFontName.PoppinsRegular,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      next();
    });
  }

  // LoginModel loginModel;

  void next() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Navbar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              'Serbada App',
              style: AppTextStyle.regularTextStyle.copyWith(
                fontSize: 28,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
            // child:
            // SvgPicture.asset('assets/svg/up_arrow.svg'),
          ),
        ),
      ),
    );
  }
}
