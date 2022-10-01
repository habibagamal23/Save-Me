import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final message = 'Hey my name is habiba';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating QR '),
      ),

      body: Center(
        child: Column(
            
            children: [
              QrImage(
                data: message,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ]),
      ),
    );
  }
}
