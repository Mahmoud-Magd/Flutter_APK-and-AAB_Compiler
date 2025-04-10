import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String title;
  final String hintText;
  final String leftImage;
  final String rightImage;
  final String errorText;
  final String forgotText;

  const Input({
    super.key,
    required this.title,
    required this.hintText,
    required this.leftImage,
    required this.rightImage,
    required this.errorText,
    required this.forgotText,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(widget.leftImage, width: 24, height: 24),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                  ),
                ),
              ),
              Image.asset(widget.rightImage, width: 24, height: 24),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.errorText,
              style: const TextStyle(color: Color(0xFFB71C1C), fontSize: 12),
            ),
            Text(
              widget.forgotText,
              style: const TextStyle(color: Colors.blue, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}