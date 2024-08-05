import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_third/counter/business_logic/blocs/counter_bloc/counter_bloc.dart';
import 'package:flutter_third/counter/business_logic/blocs/counter_bloc/foot_bloc.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  final CounterBloc counterBloc1 = CounterBloc();
  final FootBloc footBloc1 = FootBloc();

  final CounterBloc counterBloc2 = CounterBloc();
  final FootBloc footBloc2 = FootBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App with Bloc",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Choose the step",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const Gap(15),
                        InkWell(
                          onTap: () {
                            // context.read<FootBloc>().add(OneFoot());
                            footBloc1.add(OneFoot());
                          },
                          child: BlocBuilder<FootBloc, FootState>(
                            bloc: footBloc1,
                            builder: (context, state) {
                              return Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: footBloc1.state.foot == 1
                                      ? Colors.deepPurple.withOpacity(0.5)
                                      : Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "+/- 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Gap(15),
                        InkWell(
                          onTap: () {
                            // context.read<FootBloc>().add(TwoFoot());
                            footBloc1.add(TwoFoot());
                          },
                          child: BlocBuilder<FootBloc, FootState>(
                            bloc: footBloc1,
                            builder: (context, state) {
                              return Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: footBloc1.state.foot == 2
                                      ? Colors.deepPurple.withOpacity(0.5)
                                      : Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "+/- 2",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Gap(15),
                        Center(
                          child: BlocBuilder<FootBloc, FootState>(
                            bloc: footBloc1,
                            builder: (context, state) {
                              return Text(
                                "${footBloc1.state.foot}",
                                style: const TextStyle(
                                  fontSize: 50,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: BlocBuilder<CounterBloc, CounterState>(
                      bloc: counterBloc1,
                      builder: (context, state) {
                        return Text(
                          "${counterBloc1.state.counter}",
                          style: const TextStyle(
                            fontSize: 100,
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      bottom: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: "decrement1",
                          onPressed: () {
                            for (var i = 0; i < footBloc1.state.foot; i++) {
                              // context
                              //     .read<CounterBloc>()
                              //     .add(DecrementCounterEvent());
                              counterBloc1.add(DecrementCounterEvent());
                            }
                          },
                          backgroundColor: Colors.blue,
                          child: const Icon(
                            Icons.remove,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        FloatingActionButton(
                          heroTag: "increment1",
                          onPressed: () {
                            for (var i = 0; i < footBloc1.state.foot; i++) {
                              // context
                              //     .read<CounterBloc>()
                              //     .add(IncrementCounterEvent());
                              counterBloc1.add(IncrementCounterEvent());
                            }
                          },
                          backgroundColor: Colors.blue,
                          child: const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Choose the step",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const Gap(15),
                        InkWell(
                          onTap: () {
                            // context.read<FootBloc>().add(OneFoot());
                            footBloc2.add(OneFoot());
                          },
                          child: BlocBuilder<FootBloc, FootState>(
                            bloc: footBloc2,
                            builder: (context, state) {
                              return Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: footBloc2.state.foot == 1
                                      ? Colors.deepPurple.withOpacity(0.5)
                                      : Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "+/- 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Gap(15),
                        InkWell(
                          onTap: () {
                            // context.read<FootBloc>().add(TwoFoot());
                            footBloc2.add(TwoFoot());
                          },
                          child: BlocBuilder<FootBloc, FootState>(
                            bloc: footBloc2,
                            builder: (context, state) {
                              return Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: footBloc2.state.foot == 2
                                      ? Colors.deepPurple.withOpacity(0.5)
                                      : Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "+/- 2",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Gap(15),
                        Center(
                          child: BlocBuilder<FootBloc, FootState>(
                            bloc: footBloc2,
                            builder: (context, state) {
                              return Text(
                                "${footBloc2.state.foot}",
                                style: const TextStyle(
                                  fontSize: 50,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: BlocBuilder<CounterBloc, CounterState>(
                      bloc: counterBloc2,
                      builder: (context, state) {
                        return Text(
                          "${counterBloc2.state.counter}",
                          style: const TextStyle(
                            fontSize: 100,
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      bottom: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: "decrement2",
                          onPressed: () {
                            for (var i = 0; i < footBloc2.state.foot; i++) {
                              // context
                              //     .read<CounterBloc>()
                              //     .add(DecrementCounterEvent());
                              counterBloc2.add(DecrementCounterEvent());
                            }
                          },
                          backgroundColor: Colors.red,
                          child: const Icon(
                            Icons.remove,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        FloatingActionButton(
                          heroTag: "increment2",
                          onPressed: () {
                            for (var i = 0; i < footBloc2.state.foot; i++) {
                              // context
                              //     .read<CounterBloc>()
                              //     .add(IncrementCounterEvent());
                              counterBloc2.add(IncrementCounterEvent());
                            }
                          },
                          backgroundColor: Colors.red,
                          child: const Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(
      //     left: 48,
      //     right: 13,
      //     bottom: 30,
      //   ),
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       BlocBuilder<FootBloc, FootState>(
      //         builder: (context, state) {
      //           return FloatingActionButton(
      //             heroTag: "decrement",
      //             onPressed: () {
      //               for (var i = 0; i < state.foot; i++) {
      //                 context.read<CounterBloc>().add(DecrementCounterEvent());
      //               }
      //             },
      //             backgroundColor: Colors.deepPurple,
      //             child: const Icon(
      //               Icons.remove,
      //               size: 25,
      //               color: Colors.white,
      //             ),
      //           );
      //         },
      //       ),
      // const SizedBox(width: 25),
      //       BlocBuilder<FootBloc, FootState>(
      //         builder: (context, state) {
      //           return FloatingActionButton(
      //             heroTag: "increment",
      //             onPressed: () {
      //               for (var i = 0; i < state.foot; i++) {
      //                 context.read<CounterBloc>().add(IncrementCounterEvent());
      //               }
      //             },
      //             backgroundColor: Colors.deepPurple,
      //             child: const Icon(
      //               Icons.add,
      //               size: 25,
      //               color: Colors.white,
      //             ),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
