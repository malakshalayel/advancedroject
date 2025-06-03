import 'package:advanced_project/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_project/features/home/logic/cubit/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorsSuccess || current is DoctorsError,

      builder: (context, state) {
        debugPrint("///DoctorBlocBuilder///: $state");
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),

          doctorsSuccess: (doctorsList) {
            var doctorDataList = doctorsList;

            return DoctorsListView(doctorsList: doctorDataList);
          },
          doctorsError: (errorState) {
            return Center(
              child: Text(
                "Error: $errorState",
                style: TextStyle(fontSize: 16.sp, color: Colors.red),
              ),
            );
          },
        );
      },
    );
  }
}
