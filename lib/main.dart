import 'package:flutter/material.dart';

class AnimatedXYZ extends StatefulWidget {
  const AnimatedXYZ({super.key});

  @override
  _AnimatedXYZState createState() => _AnimatedXYZState();
}

// building the container class
class _AnimatedXYZState extends State<AnimatedXYZ> {
  bool _toggle = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'AnimatedContainer',
                style: TextStyle(fontSize: 20),
              ),
            ),

            // using the AnimatedContainer widget
            AnimatedContainer(
              decoration: BoxDecoration(
                color: _toggle == true
                    ? Colors.blueAccent
                    : Colors.deepPurpleAccent,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              curve: Curves.easeInOutBack,
              duration: const Duration(seconds: 1),
              height: _toggle == true ? 100 : 400,
              width: _toggle == true ? 100 : 200,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _toggle = !_toggle;
                });
              },
              child: const Text('Animate'),
            )
          ],
        ),
      ),
    );
  }
}
