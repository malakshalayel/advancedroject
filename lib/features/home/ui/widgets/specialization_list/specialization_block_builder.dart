import 'package:advanced_project/features/home/data/models/specialization_responce.dart';
import 'package:advanced_project/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_project/features/home/logic/cubit/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctor_shimmer_loading.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/speciality_list_view.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/specialization_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationBlockBuilder extends StatelessWidget {
  const SpecializationBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsSuccess ||
              current is SpecializationsError,
      builder: (context, state) {
        return state.maybeMap(
          specializationsLoading: (_) => setUpLoading(),
          specializationsSuccess: (state) {
            return setUpSuccess(state.specializationDataList);
          },
          specializationsError: (errorHandler) => setupError(),

          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setUpLoading() {
    return Expanded(
      child: Column(
        children: [
          SpecializationShimmerLoading(),
          SizedBox(height: 8.0),
          DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setUpSuccess(List<SpecializationsData?>? specializationList) {
    return SpecialityListView(specializationDataList: specializationList ?? []);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
