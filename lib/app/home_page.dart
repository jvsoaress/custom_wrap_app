import 'package:custom_wrap_app/app/overflowed_wrap.dart';
import 'package:flutter/material.dart';

import 'colored_text_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom wrap'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const Text(
                'Without overflow',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              OverflowedWrap(
                maxLines: 2,
                spacing: 10,
                runSpacing: 10,
                overflowWidget: _buildOverflowWidget(),
                children: const [
                  ColoredTextBox(
                    text: 'this is a big widget',
                    color: Colors.red,
                  ),
                  ColoredTextBox(
                    text: 'kind of small',
                    color: Colors.green,
                  ),
                  ColoredTextBox(
                    text: 'a little bit bigger',
                    color: Colors.yellow,
                  ),
                  ColoredTextBox(
                    text: 'this is the biggest widget',
                    color: Colors.grey,
                  ),
                  ColoredTextBox(
                    text: 'this fits the screen',
                    color: Colors.brown,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'With overflow',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              OverflowedWrap(
                maxLines: 2,
                spacing: 10,
                runSpacing: 10,
                overflowWidget: _buildOverflowWidget(),
                children: const [
                  ColoredTextBox(
                    text: 'this is a big widget',
                    color: Colors.red,
                  ),
                  ColoredTextBox(
                    text: 'kind of small',
                    color: Colors.green,
                  ),
                  ColoredTextBox(
                    text: 'a little bit bigger',
                    color: Colors.yellow,
                  ),
                  ColoredTextBox(
                    text: 'this is the biggest widget that we have',
                    color: Colors.grey,
                  ),
                  ColoredTextBox(
                    text: 'this is bigger than the screen width',
                    color: Colors.brown,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOverflowWidget() {
    return Container(
      key: const ValueKey('overflow'),
      height: 100,
      width: 100,
      child: const Center(
        child: Text(
          'More',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 5),
      ),
    );
  }
}
