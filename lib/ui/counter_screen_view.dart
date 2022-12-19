import 'package:flutter/material.dart';
import 'package:flutter_streams/view_models/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterScreenView extends StatefulWidget {
  const CounterScreenView({Key? key}) : super(key: key);

  @override
  State<CounterScreenView> createState() => _CounterScreenViewState();
}

class _CounterScreenViewState extends State<CounterScreenView> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Counter Screen",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: ChangeNotifierProvider(
          create: (context) => CounterViewModel(),
          builder: (context, child) {
            return Consumer<CounterViewModel>(
                builder: (context, viewModel, child) {
              return Column(children: [
                Center(
                  child: Text("Name :${viewModel.name}"),
                ),
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: TextField(
                    controller: nameController,
                    onChanged: (value) {
                      context.read<CounterViewModel>().addToStream(value);
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<CounterViewModel>()
                          .addToStream(nameController.text);
                    },
                    child: const Text("Add name"))
              ]);
            });
          }),
    );
  }
}

// Widget eskisi(){
//   return Scaffold(
//     appBar: AppBar(
//       centerTitle: true,
//       backgroundColor: Colors.white,
//       elevation: 0,
//       title: const Text(
//         "Counter Screen",
//         style: TextStyle(color: Colors.black, fontSize: 24),
//       ),
//     ),
//     body: ChangeNotifierProvider(
//       create: (context) => CounterViewModel(),
//       builder: (context, child) {
//         return Consumer<CounterViewModel>(
//             builder: (context, viewModel, child) {
//               return Column(
//                 children: [
//                   Center(
//                     child: Text(viewModel.count.toString()),
//                   ),
//                   ElevatedButton(onPressed: (){
//                     context.read<CounterViewModel>().pauseCounterStream();
//                   }, child: const Text("Pause Stream")),
//                   ElevatedButton(onPressed: (){
//                     context.read<CounterViewModel>().resumeCounterStream();
//                   }, child: const Text("Resume Stream")),
//                   ElevatedButton(onPressed: (){
//                     context.read<CounterViewModel>().cancelCounterStream();
//                   }, child: const Text("Cancel Stream")),
//                 ],
//               );
//             });
//       },
//     ),
//   );
// }
