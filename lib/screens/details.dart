import 'dart:ui';

import 'package:doctorApp/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetails({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
        centerTitle: true,
        actions: const [Icon(Icons.menu)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(doctor.image),
                radius: 35,
              ),
              const SizedBox(width: 16.0),
              Column(
                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(doctor.title),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow),
                      const Icon(Icons.star, color: Colors.yellow),
                      const Icon(Icons.star, color: Colors.yellow),
                      const Icon(Icons.star, color: Colors.yellow),
                      const Icon(Icons.star, color: Colors.yellow),
                      const SizedBox(width: 8.0),
                      Text(doctor.star.toString()),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const Divider(
            thickness: 2,
            height: 2,
          ),
          const SizedBox(height: 16.0),
          const Center(
            child: Text(
              'Short Description',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            doctor.description,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Location',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on_outlined),
              Text(
                doctor.location,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Image.asset('assets/map.png'),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Request'),
          ),
        ],
      ),
    );
  }
}
