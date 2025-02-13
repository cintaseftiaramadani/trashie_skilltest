import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashie_skilltest/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPage>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late TabController _tabController;
  late TextEditingController _emailController1;
  late TextEditingController _passwordController1;
  late TextEditingController _emailController2;
  late TextEditingController _passwordController2;

  bool _passwordVisibility1 = false;
  bool _passwordVisibility2 = false;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 2);
    _emailController1 = TextEditingController();
    _passwordController1 = TextEditingController();
    _emailController2 = TextEditingController();
    _passwordController2 = TextEditingController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _emailController1.dispose();
    _passwordController1.dispose();
    _emailController2.dispose();
    _passwordController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context)
            .unfocus(); // untuk menghilangkan fokus saat area lain diklik
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF6295A2),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: Text(
                      'TRASHIE',
                      style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 570),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0E8D5),
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: const Color(0xFF3E7B27), width: 2),
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: const Color(0xFF3E7B27),
                          tabs: const [
                            Tab(text: 'Create Account'),
                            Tab(text: 'Log In'),
                          ],
                        ),
                        SizedBox(
                          height: 400, // Adjust height as needed
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              _buildCreateAccountTab(),
                              _buildLoginTab(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAccountTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WELCOME!',
            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            'Let\'s get started by filling out the form below.',
            style: GoogleFonts.readexPro(fontSize: 16),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _emailController1,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide:
                    const BorderSide(color: Color(0xFF3E7B27), width: 2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController1,
            obscureText: !_passwordVisibility1,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide:
                    const BorderSide(color: Color(0xFF3E7B27), width: 2),
              ),
              suffixIcon: IconButton(
                icon: Icon(_passwordVisibility1
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _passwordVisibility1 = !_passwordVisibility1;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                iconColor: const Color(0xFF3E7B27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back!',
            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            'Fill out the information below to access your account.',
            style: GoogleFonts.readexPro(fontSize: 16),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _emailController2,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide:
                    const BorderSide(color: Color(0xFF3E7B27), width: 2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController2,
            obscureText: !_passwordVisibility2,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide:
                    const BorderSide(color: Color(0xFF3E7B27), width: 2),
              ),
              suffixIcon: IconButton(
                icon: Icon(_passwordVisibility2
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _passwordVisibility2 = !_passwordVisibility2;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                iconColor: const Color(0xFF3E7B27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('Sign In'),
            ),
          ),
        ],
      ),
    );
  }
}
