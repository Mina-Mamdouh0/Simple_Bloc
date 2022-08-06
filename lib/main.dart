import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testbloc/cubit.dart';
import 'package:testbloc/states.dart';

import 'BlocObserver.dart';

void main() {
  BlocOverrides.runZoned(
        () {},
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   return BlocProvider(
     create: (context)=>NumberCubit(),
     child: BlocConsumer<NumberCubit,NumberStates>(
       listener: (context,states){},

       builder: (context,states){
         NumberCubit c=NumberCubit.get(context);
         return Scaffold(
           body: Center(
             child: Row(
               children: [
                 IconButton(onPressed: (){
                   c.plus();
                 }, icon: const Icon(Icons.add)),
                 Text('${c.num}'),
                 IconButton(onPressed: (){
c.miuns();
                 }, icon: const Icon(Icons.class__outlined)),

               ],
             ),
           ),
         );
       },
     )
   );
  }


}

