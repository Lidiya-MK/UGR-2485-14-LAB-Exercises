import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: Text(
            'iJTracker',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images.jpg'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Robert Steven',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.directions_car,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 5),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                child: Text(
                                  'B 2455Ujd| 79U45485',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.center,
              child: Text(
                'ONLINE | battery: 90%',
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  iconWithText(Icons.map, 'Map all devices'),
                  iconWithText(Icons.location_on, 'Location'),
                  iconWithText(Icons.history, 'History'),
                  iconWithText(Icons.language, 'Globe'),
                  iconWithText(Icons.error_outline, 'Detail info'),
                  iconWithText(Icons.edit, 'Edit Device'),
                  iconWithText(Icons.phone, 'Change center number'),
                  iconWithText(Icons.lock, 'Disabled Menu', iconColor: Colors.grey),
                  iconWithText(Icons.hourglass_bottom, 'Set GPS'),
                  iconWithText(Icons.rotate_right, 'Restart Device'),
                  iconWithText(Icons.battery_full, 'Power Saving Mode'),
                  iconWithText(Icons.flash_on, 'Normal Mode'),
                  iconWithText(Icons.power_settings_new, 'Shutdown Device'),
                  iconWithText(Icons.business_center, 'Device Command'),
                  iconWithText(Icons.mail, 'Contact us'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconWithText(IconData icon, String text, {Color iconColor = Colors.blue}) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: iconColor,
          ),
          SizedBox(height: 5),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
