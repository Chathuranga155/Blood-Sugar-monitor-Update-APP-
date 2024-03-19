import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Sugar Classifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationLoginScreen(),
    );
  }
}


class RegistrationLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blood Sugar Classifier',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     Color.fromRGBO(163, 75, 217, 1),
                //     Color.fromRGBO(84, 54, 207, 1),
                //     Color.fromRGBO(0, 212, 255, 1),
                //   ],
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),
                ),
          ),
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/0012.jpg', // Replace '0012.jpg' with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Container(
            decoration: BoxDecoration(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Blood Sugar Monitor',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontFamily: 'Roboto', // Change the font family
                      fontWeight: FontWeight.bold, // Change the font weight
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset(
                        'assets/blood-pressure.png', // Replace 'blood-pressure.png' with your image asset path
                        height: 70,
                      ),
                      Text(
                        '9',
                        style: TextStyle(fontSize: 66, color: Colors.white),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 70.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => RegistrationScreen());
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10), // Button padding
                              child: Image.asset(
                                'assets/s001.jpg', // Replace 'blood-pressure.png' with your image asset path
                                height: 30, // Adjust the height as needed
                              ),
                            ),
                            Text(
                              'Register',
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => LoginScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10), // Button padding
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Registration'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/l003.jpg', // Replace 'l003.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/helth.png', // Replace 'helth1.svg' with your image asset path
                    // width: 300,
                    // height: 250,
                  ),
                  SizedBox(height: 40),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Roboto', // Change the font family
                        fontWeight: FontWeight.bold, // Change the font weight
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 19, 9, 56),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 252, 252, 252),
                        fontFamily: 'Roboto', // Change the font family
                        fontWeight: FontWeight.bold, // Change the font weight
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 19, 9, 56),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Implement registration logic here
                      // For simplicity, we'll just navigate back to the login screen
                      Get.back();
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 245, 243, 243),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.blue, // Set button background color to blue
                    ),
                  ),
                  SizedBox(height: 250),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/l003.jpg', // Replace 's001.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Transform.translate(
                    offset: Offset(0.0, -00.0),
                    child: Image.asset(
                      'assets/helth.png', // Replace 'helth1.svg' with your image asset path
                      // width: 280,
                      // height: 220,
                    ),
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Roboto', // Change the font family
                        fontWeight: FontWeight.bold, // Change the font weight
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 19, 9, 56)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 253, 253, 253),
                        fontFamily: 'Roboto', // Change the font family
                        fontWeight: FontWeight.bold, // Change the font weight
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 19, 9, 56)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login logic here
                      // For simplicity, we'll just navigate to the input screen
                      Get.off(() => InputScreen());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.blue, // Set button background color to blue
                      textStyle: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 245, 243, 243),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 250),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputScreen extends StatelessWidget {
  final TextEditingController beforeController = TextEditingController();
  final TextEditingController afterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Input Blood Sugar Data',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/l003.jpg', // Replace 's001.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Transform.translate(
                    offset: Offset(0.0, -00.0),
                    child: Image.asset(
                      'assets/hyper.png', // Replace 'helth1.svg' with your image asset path
                      // width: 280,
                      // height: 220,
                    ),
                  ),
                  TextField(
                    controller: beforeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Before Meals (fasting)',
                      labelStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: 'Roboto', // Change the font family
                        fontWeight: FontWeight.bold, // Change the font weight
                      ),
                    ),
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: afterController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'After Meals (post-prandial)',
                      labelStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: 'Roboto', // Change the font family
                        fontWeight: FontWeight.bold, // Change the font weight
                      ),
                    ),
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      double before =
                          double.tryParse(beforeController.text) ?? 0;
                      double after = double.tryParse(afterController.text) ?? 0;
                      if (before > 0 && after > 0) {
                        Get.to(() => InfoScreen(
                            before: before,
                            after: after)); // Navigate to InfoScreen
                      } else {
                        Get.snackbar(
                          'Invalid Data', 'Please enter valid values',
                          snackPosition: SnackPosition
                              .BOTTOM, // Example position, you can adjust as needed
                          backgroundColor: Colors
                              .red, // Example color, you can adjust as needed
                          colorText: Colors
                              .white, // Example color, you can adjust as needed
                        );
                      }
                    },
                    child: Text(
                      'Validate',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      // Set button background color to blue
                      textStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 250),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoScreen extends StatelessWidget {
  final double before;
  final double after;

  const InfoScreen({Key? key, required this.before, required this.after})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String category = getCategory(before, after);
    String info = getCategoryInfo(category);
    String level = getLevel(before, after);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Category Information',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/l003.jpg', // Replace 's001.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 250),
                    Text(
                      'Category: $category',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Information: $info',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Blood Sugar Level: $level',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate back to the previous screen
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0), // Increase horizontal padding
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 300),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getCategory(double before, double after) {
    // Logic to determine category based on blood sugar values
    // Implement your logic according to the provided chart
    // This is a simplified version for demonstration purposes
    if (before >= 80 && before <= 130 && after < 180) {
      return 'Adults with type 1 diabetes';
    } else if (before >= 80 && before <= 130 && after < 180) {
      return 'Adults with type 2 diabetes';
    } else if (before >= 90 && before <= 130 && after >= 90 && after <= 150) {
      return 'Children with type 1 diabetes';
    } else if (before < 95 && after == 140) {
      return 'Pregnant people (T1D, gestational diabetes)';
    } else if (before >= 80 && before <= 180) {
      return '65 or older';
    } else {
      return 'Without diabetes';
    }
  }

  String getCategoryInfo(String category) {
    // Implement logic to fetch information based on category
    // You can fetch this information from a database or hardcode it here
    // This is a simplified version for demonstration purposes
    switch (category) {
      case 'Adults with type 1 diabetes':
        return 'Goals: Before meals (fasting): 80–130 mg/dL, After meals (post-prandial): < 180 mg/dL';
      case 'Adults with type 2 diabetes':
        return 'Goals: Before meals (fasting): 80–130 mg/dL, After meals (post-prandial): < 180 mg/dL';
      case 'Children with type 1 diabetes':
        return 'Goals: Before meals (fasting): 90-130 mg/dL, Bedtime/overnight: 90–150 mg/dL';
      case 'Pregnant people (T1D, gestational diabetes)':
        return 'Goals: Before meals (fasting): < 95 mg/dL, 1 hour after: 140 mg/dL, 2 hours after: 120 mg/dL';
      case '65 or older':
        return 'Goals: Before meals (fasting): 80–180 mg/dL';
      case 'Without diabetes':
        return 'Normal range: Before meals (fasting): 99 mg/dL or below, After meals (post-prandial): 140 mg/dL or below';
      default:
        return 'Category information not available';
    }
  }

  String getLevel(double before, double after) {
    // Determine blood sugar level classification
    // This is a simplified version for demonstration purposes
    double average = (before + after) / 2;
    if (average < 70) {
      return 'Low';
    } else if (average >= 70 && average <= 180) {
      return 'Normal';
    } else {
      return 'High';
    }
  }
}

// make about section
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/l003.jpg', // Replace 'l003.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Version 1.0.0', // Add version information
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'This application serves as a blood sugar monitor to help users track their blood sugar levels. It provides features to input blood sugar data, categorize the readings, and view information based on the readings.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate back to the previous screen
                      Get.back();
                    },
                    child: Text('Back'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/home001.jpg', // Replace 'l003.jpg' with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            // Content
          ],
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(84, 54, 207, 1),
            ),
            accountName: Text('John Doe'),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: FlutterLogo(),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('A'),
              ),
            ],
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              // Implement navigation to home screen
              Get.to(() => HomeScreen());
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              // Navigate to the RegistrationScreen
              Get.to(() => AboutScreen());
            },
          ),
          ListTile(
            title: Text('Monitor'),
            onTap: () {
              // Implement navigation to monitor screen
              Get.to(() => InputScreen());
            },
          ),
          // Bottom Section
          SizedBox(height: 420),
          Divider(), // Add a divider
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              // Implement logout functionality
            },
            child: ListTile(
              title: Text('Logout'), // Add a logout option
            ),
          ),
        ],
      ),
    );
  }
}
