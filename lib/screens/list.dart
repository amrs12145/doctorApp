import 'package:doctorApp/models/doctor.dart';
import 'package:doctorApp/screens/details.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  DoctorList({Key? key}) : super(key: key);

  List<Doctor> doctors = [
    Doctor(
      image: 'assets/1.jpg',
      name: 'Ahmed Elmasry',
      title: 'Doctor',
      star: 5,
      location: 'Cairo ,Egypt',
      description: 'He is the most professional doctor ever',
    ),
    Doctor(
      image: 'assets/2.jpg',
      name: 'Ahmed Elmasry',
      title: 'Doctor',
      star: 5,
      location: 'Cairo ,Egypt',
      description: 'He is the most professional doctor ever',
    ),
    Doctor(
      image: 'assets/3.jpg',
      name: 'Ahmed Elmasry',
      title: 'Doctor',
      star: 5,
      location: 'Cairo ,Egypt',
      description: 'He is the most professional doctor ever',
    ),
    Doctor(
      image: 'assets/4.jpg',
      name: 'Ahmed Elmasry',
      title: 'Doctor',
      star: 5,
      location: 'Cairo ,Egypt',
      description: 'He is the most professional doctor ever',
    ),
    Doctor(
      image: 'assets/5.jpg',
      name: 'Ahmed Elmasry',
      title: 'Doctor',
      star: 5,
      location: 'Cairo ,Egypt',
      description: 'He is the most professional doctor ever',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Doctor List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoctorDetails(doctor: doctors[index]);
                  },
                ),
              ),
              tileColor: Colors.grey.shade100,
              contentPadding: const EdgeInsets.all(8.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage(doctors[index].image),
              ),
              title: Text(doctors[index].name),
              subtitle: Text(doctors[index].title),
              trailing: const Icon(Icons.star),
            ),
          );
        },
      ),
    );
  }
}
