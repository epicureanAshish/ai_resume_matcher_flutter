import 'package:flutter/material.dart';

class UploadResumeCard extends StatelessWidget {
  const UploadResumeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_upload_outlined,
            size: 60,
            color: Color(0xff2563EB),
          ),

          const SizedBox(height: 16),

          const Text(
            'Upload Resume',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Drag & drop your PDF here\nor tap to select file',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: 140,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                const Color(0xff2563EB),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Select File',
                style: TextStyle(
                    color: Colors.white
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}