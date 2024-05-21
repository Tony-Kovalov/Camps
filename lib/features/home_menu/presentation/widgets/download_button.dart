import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  DownloadButton({Key? key, required this.onPressed}) : super(key: key);

  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.primaryYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.file_download_outlined, color: Colors.black),
            SizedBox(width: 10),
            Text("Завантажити", style: TextStyle(color: Colors.black, fontSize: 14),),
          ],
        ),
      ),
    );
  }
}
