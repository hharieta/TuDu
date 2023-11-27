import 'package:flutter/material.dart';
import 'package:tudu/data/models/task.dart';
import 'package:tudu/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:tudu/widgets/display_list_of_task.dart';
import 'package:tudu/widgets/display_white_text.dart';

import '../utils/taks_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: '26 Nov, 2023',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    Gap(10),
                    DisplayWhiteText(
                      text: 'TuDu List',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: deviceSize.width,
                  color: colors.surface,
                ),
              ),
            ],
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'Pancito',
                          note: 'Comprar pancito',
                          time: '9:00',
                          date: '28 Nov 2023',
                          isCompleted: false,
                          category: TaskCategories.shopping,
                        ),
                        Task(
                          title: 'Condones',
                          note: 'Sin globito no hay fiestita',
                          time: '13:16',
                          date: '29 Nov 2023',
                          isCompleted: false,
                          category: TaskCategories.health,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'Presentación',
                          note: 'Tarea de Investigación I',
                          time: '20:00',
                          date: '27 Nov 2023',
                          isCompleted: true,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'Código Paralelo',
                          note: 'Implementar código MPI Python',
                          time: '15:00',
                          date: '27 Nov 2023',
                          isCompleted: true,
                          category: TaskCategories.education,
                        ),
                        Task(
                          title: 'Sprint 2',
                          note: 'Revision de Sprint 2 | GPS',
                          time: '12:00',
                          date: '20 Nov 2023',
                          isCompleted: true,
                          category: TaskCategories.education,
                        ),
                      ],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const DisplayWhiteText(text: 'Add New Task'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
