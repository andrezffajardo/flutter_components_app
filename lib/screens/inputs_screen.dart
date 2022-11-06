import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Andres',
      'last_name': 'Fajardo',
      'email': 'andrew@gmail.com',
      'password': '54321',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'First Name',
                  hintText: 'User First Name',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Last Name',
                    hintText: 'User Last Name',
                    formProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Email',
                    hintText: 'User Email',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Password',
                    hintText: 'User Password',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Invalid Form');
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Save')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
