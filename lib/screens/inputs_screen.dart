import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value: $value');
                },
                validator: (value) {
                  if (value == null) return 'Field Required';
                  return value.length < 4 ? '4 letters min' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'User Name',
                  labelText: 'Name',
                  helperText: 'Only Letters',
                  suffixIcon: Icon(Icons.person_add),
                  icon: Icon(Icons.assignment_ind),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
