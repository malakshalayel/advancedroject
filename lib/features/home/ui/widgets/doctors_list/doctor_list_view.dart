import 'package:advanced_project/features/home/data/models/specialization_responce.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorsModel: doctorsList?[index]);
        },
      ),
    );
  }
}
