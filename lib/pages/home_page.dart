import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Test counter',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            Obx(
              () => Text(
                counterController.count.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counterController.increment,
                  child: const Text('Increment'),
                ),
                SizedBox(width: Get.width * 0.1),
                ElevatedButton(
                  onPressed: counterController.decrement,
                  child: const Text('Decrement'),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            const Text(
              'Routes',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/secondPage'),
              child: const Text('Second page'),
            ),
          ],
        ),
      ),
    );
  }
}
