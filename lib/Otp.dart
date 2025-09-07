import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 215, 204, 200),
          title: const Text('OTP Verification'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 22, 21, 21),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _otpController,
                        maxLength: 4,
                        decoration: const InputDecoration(
                          labelText: 'Enter OTP',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 237, 227, 227)),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the OTP';
                          }
                          if (value.length != 4) {
                            return 'OTP must be 4 digits';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process OTP verification
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('OTP Verified')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 215, 204, 200),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text('Verify OTP',
                            style: TextStyle(
                                color: Color.fromARGB(255, 18, 17, 17),
                                fontSize: 20)),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('OTP Resent')),
                          );
                        },
                        child: const Text(
                          'Resend OTP',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 237, 227, 227),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
