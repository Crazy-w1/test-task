import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint; // Подсказка внутри поля, отображается только если пусто
  final TextEditingController? controller; // Контроллер для управления текстом
  final ValueChanged<String>? onChanged; // Callback при изменении текста
  final bool isValid; // Флаг валидности (для изменения цвета окантовки)

  const CustomTextField({
    super.key,
    this.hint,
    this.controller,
    this.onChanged,
    this.isValid = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: controller?.text.isEmpty ?? true ? hint : null, // Подсказка только если поле пусто
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: isValid ? Colors.grey : Colors.red,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    );
  }
}