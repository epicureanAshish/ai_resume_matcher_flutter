import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final int matchScore;
  final String type;

  const JobCard({
    super.key,
    required this.title,
    required this.company,
    required this.location,
    required this.matchScore,
    required this.type,
  });

  Color get scoreColor {
    if (matchScore >= 85) {
      return Colors.green;
    } else if (matchScore >= 70) {
      return Colors.orange;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              CircleAvatar(
                backgroundColor:
                Colors.blue.shade50,
                child: const Icon(
                  Icons.business,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      company,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                ),
              )
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(width: 4),
              Text(location),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              const Icon(
                Icons.work_outline,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(width: 4),
              Text(type),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [

              Container(
                padding:
                const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color:
                  scoreColor.withOpacity(.15),
                  borderRadius:
                  BorderRadius.circular(20),
                ),
                child: Text(
                  "$matchScore% Match",
                  style: TextStyle(
                    color: scoreColor,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color(0xff2563EB),
                ),
                child: const Text(
                  "Apply",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}