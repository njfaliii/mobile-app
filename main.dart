import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

void main() {
  runApp(const ProfessionalClockApp());
}

class ProfessionalClockApp extends StatelessWidget {
  const ProfessionalClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Digital Clock',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
      ),
      home: const AdvancedDigitalClock(),
    );
  }
}

class AdvancedDigitalClock extends StatefulWidget {
  const AdvancedDigitalClock({super.key});

  @override
  _AdvancedDigitalClockState createState() => _AdvancedDigitalClockState();
}

class _AdvancedDigitalClockState extends State<AdvancedDigitalClock> {
  late Timer _timer;
  late DateTime _currentTime;
  late String _timeZone;
  late bool _is24HourFormat;
  late bool _showSeconds;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timeZone = _getCurrentTimeZone();
    _is24HourFormat = true;
    _showSeconds = true;

    // Update every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _getCurrentTimeZone() {
    final String timeZoneName = _currentTime.timeZoneName;
    final Duration timeZoneOffset = _currentTime.timeZoneOffset;
    
    String offsetString = timeZoneOffset.isNegative 
      ? '-${timeZoneOffset.inHours.abs().toString().padLeft(2, '0')}:${(timeZoneOffset.inMinutes.abs() % 60).toString().padLeft(2, '0')}'
      : '+${timeZoneOffset.inHours.toString().padLeft(2, '0')}:${(timeZoneOffset.inMinutes % 60).toString().padLeft(2, '0')}';
    
    return '$timeZoneName (UTC$offsetString)';
  }

  String _formatTime() {
    if (_is24HourFormat) {
      return _showSeconds 
        ? DateFormat('HH:mm:ss').format(_currentTime)
        : DateFormat('HH:mm').format(_currentTime);
    } else {
      return _showSeconds 
        ? DateFormat('hh:mm:ss a').format(_currentTime)
        : DateFormat('hh:mm a').format(_currentTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Gradient Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black87,
                  Colors.black54,
                  Colors.black38,
                ],
              ),
            ),
          ),

          // Main Clock Display
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Time Display
                Text(
                  _formatTime(),
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 86,
                    color: Colors.white.withOpacity(0.9),
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.blue.withOpacity(0.5),
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                ),

                // Date Display
                Text(
                  DateFormat('EEEE, MMMM d, yyyy').format(_currentTime),
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 22,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 20),

                // TimeZone Display
                Text(
                  _timeZone,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 40),

                // Control Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Toggle 12/24 Hour Format
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _is24HourFormat = !_is24HourFormat;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.withOpacity(0.3),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(_is24HourFormat ? '24H' : '12H'),
                    ),

                    const SizedBox(width: 20),

                    // Toggle Seconds Display
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showSeconds = !_showSeconds;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.withOpacity(0.3),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(_showSeconds ? 'Hide Seconds' : 'Show Seconds'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}