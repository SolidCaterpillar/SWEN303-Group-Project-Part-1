import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'screens/dashboard_screen.dart';
import 'screens/expense_screen.dart';
import 'screens/owing_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/insights_screen.dart';
import 'screens/add_expense_overlay.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textPrimary),
          bodyMedium: TextStyle(color: AppColors.textSecondary),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.textPrimary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.textSecondary,
          error: AppColors.error,
          onError: AppColors.textError,
          background: AppColors.background,
          onBackground: AppColors.textPrimary,
          surface: AppColors.surface,
          onSurface: AppColors.textPrimary,
        ),
      ),
      home: const SizedBox(
        width: 375,
        height: 812,
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    DashboardScreen(),
    ExpenseScreen(),
    OwingScreen(),
    InsightsScreen(),
  ];

  final List<String> _appBarNames = [
    'Dashboard',
    'Expenses',
    'Owing',
    'Insights',
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _navigateToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsScreen()),
    );
  }

  Widget _menuButtonAppBar(context) {
          return IconButton(
            icon: const Icon(Icons.menu, color: AppColors.textPrimary),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }

final List<List<Widget>> _appBarActions = [
  [], // No actions for home
  [ // Actions for expenses
    IconButton(
      icon: const Icon(Icons.filter_list, color: AppColors.textPrimary),
      onPressed: _navigateToFilter,
    ),
    IconButton(
      icon: const Icon(Icons.search, color: AppColors.textPrimary),
      onPressed: _navigateToSearch,
    ),
  ],
  [], // No actions for owing
  [], // No actions for insights
];

  AppBar _buildAppBar() {
    return AppBar(
      title: Center(
        child: Text(_appBarNames[_currentIndex],
            style: TextStyle(color: AppColors.textPrimary)),
      ),
      backgroundColor: AppColors.primary,
      leading: Builder(
        builder: _menuButtonAppBar,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search, color: AppColors.textPrimary),
          onPressed: _navigateToSettings,
        ),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: Drawer(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading:
                    const Icon(Icons.settings, color: AppColors.textPrimary),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  _navigateToSettings();
                },
              ),
            ],
          ),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: AppColors.textPrimary,
        unselectedItemColor: AppColors.textSecondary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off),
            label: 'Owing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: 'Insights',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddExpenseOverlay()),
        ),
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


}
