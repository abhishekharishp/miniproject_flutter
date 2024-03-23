import 'package:flutter/material.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350.0,
          height: 400.0,
          decoration: BoxDecoration(
            color: const Color(0xFF233831),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your mobile no.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                width: 180.0,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      hintText: '9778393558',
                      hintStyle: TextStyle(color: Colors.grey)),
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    setState(() {
                      phoneNumber = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 40.0),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 56.0,
                    height: 56.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFEDE7DE), // Circular background color
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle button press
                      Navigator.pushNamed(context, '/login/otp');
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF4C6763),
                      size: 32.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
