import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                // Wrap the row with Expanded to take up available space
                child: Row(
                  children: [
                    // Left Column
                    Flexible(
                      // Use Flexible instead of Expanded
                      child: SingleChildScrollView(
                        // Use SingleChildScrollView to make the content scrollable
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Title",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "RADO is a Swiss luxury watchmaking company known for its innovative designs and high-quality timepieces. Since 1917, RADO has set new trends in the watch industry, blending craftsmanship with cutting-edge technology and materials. RADO’s dedication to design and innovation has positioned it as a leader in luxury watchmaking. With unique materials and advanced technology, RADO watches are known for their durability and aesthetic appeal, catering to watch enthusiasts worldwide.",
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconContainer(icon: Icons.home, label: "Home"),
                                IconContainer(
                                    icon: Icons.contact_page, label: "Contact"),
                                IconContainer(
                                    icon: Icons.phone, label: "Phone"),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SocialIcon(
                                      icon: Icons.facebook, label: "Facebook"),
                                  SocialIcon(
                                      icon: Icons.snapchat, label: "Snapchat"),
                                  SocialIcon(
                                      icon: Icons.facebook, label: "Facebook"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Right Column
                    Flexible(
                      // Use Flexible instead of Expanded
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            color: Colors.grey[300],
                            child: Center(
                              child: Image.asset(
                                  'assets/images/rado.jpg'), // Image in assets
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text("RADO Watches"),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "RADO’s dedication to design and innovation has positioned it as a leader in luxury watchmaking. With unique materials and advanced technology, RADO watches are known for their durability and aesthetic appeal, catering to watch enthusiasts worldwide.",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContainer({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  SocialIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 24),
        SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
