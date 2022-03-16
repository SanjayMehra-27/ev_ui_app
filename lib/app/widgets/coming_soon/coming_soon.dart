import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const  Center(
            child: Text('Coming Soon ...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
