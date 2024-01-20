import 'package:cold_mailing/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormFieldWidget<T> extends StatelessWidget {
  final TextEditingController controller;
  final Color? borderColor;
  final String? hint_text;
  final FocusNode? focusNode;
  final String? Function(T?)? validator;

  FormFieldWidget({
    Key? key,
    required this.controller,
    this.hint_text,
    this.validator,
    this.focusNode,
    this.borderColor,
  }) : super(key: key);

  OutlineInputBorder border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(35.r),
    borderSide: BorderSide(
      color: borderColor ?? Colors.white,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0.sp),
      child: TextFormField(
        controller: controller, // Use the provided controller
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          hintText: hint_text,
          hintStyle: const TextStyle(color: AppColors.hintColor),
          border: border(AppColors.white),
          enabledBorder: border(AppColors.white),
          focusedBorder: border(Colors.red),
          disabledBorder: border(AppColors.white),
          focusedErrorBorder: border(AppColors.crimsonRed),
          errorMaxLines: 2,
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validator?.call(value as T),
      ),
    );
  }
}
