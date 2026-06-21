import 'package:flutter/material.dart';

class ResumeItem extends StatelessWidget {
  final String fileName;
  final String date;
  final bool isParsed;

  const ResumeItem({
    super.key,
    required this.fileName,
    required this.date,
    required this.isParsed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(14),
      ),
      child: Row(
        children: [

          /// PDF Icon
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius:
              BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.picture_as_pdf,
              color: Colors.red,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  fileName,
                  style: const TextStyle(
                    fontWeight:
                    FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(height: 6),

                if (isParsed)
                  Container(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green
                          .withOpacity(.1),
                      borderRadius:
                      BorderRadius.circular(
                          20),
                    ),
                    child: const Text(
                      'Parsed',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight:
                        FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'view',
                child: Text('View'),
              ),
              const PopupMenuItem(
                value: 'download',
                child: Text('Download'),
              ),
              const PopupMenuItem(
                value: 'delete',
                child: Text('Delete'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}