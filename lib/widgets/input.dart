import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String title;
  final String hintText;
  final String? leftImage;
  final String? rightImage;
  final String? errorText;
  final String? forgotText;

  const Input({
    super.key,
    required this.title,
    required this.hintText,
    this.leftImage,
    this.rightImage,
    this.errorText,
    this.forgotText,
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
        TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: widget.hintText,
            border: const OutlineInputBorder(),
            prefixIcon: widget.leftImage != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(widget.leftImage!),
                  )
                : null,
            suffixIcon: widget.rightImage != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(widget.rightImage!),
                  )
                : null,
          ),
        ),
        const SizedBox(height: 6),
        if (widget.errorText != null || widget.forgotText != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.errorText ?? '',
                style: const TextStyle(
                  color: Color(0xFFB71C1C),
                  fontSize: 12,
                ),
              ),
              Text(
                widget.forgotText ?? '',
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
