import 'package:counter/counter/cubit/cubit.dart';
import 'package:counter/counter/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterState>(
        listener: (context, state) {} ,
        builder: (context,state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: ()
                  {
                  CounterCubit.get(context).minus();
                  },
                    child: Text('MINUS'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){
                    CounterCubit.get(context).plus();
                  },
                    child: Text('PLUS'),
                  ),


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
