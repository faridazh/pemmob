import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tugas4/models/jarak_count.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key, required this.jarak}) : super(key: key);

  final void Function(Jarak) jarak;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FormBuilder(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'jarak',
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(hintText: 'Masukkan meter'),
                validator: (value) {
                  String input = value ?? '0';
                  if (input.isEmpty) {
                    return 'Tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width,
                child: ElevatedButton(
                    onPressed: () => setState(() {
                      _onSubmit();
                    }),
                    child: const Text('Hitung')),
              ), const SizedBox(height: 10,)
            ],
          ),
        ));
  }
  void _onSubmit() {
    _formKey.currentState?.save();
    if (_formKey.currentState!.validate()) {
      String meter = _formKey.currentState?.value['jarak'] ?? '0';
      Jarak jarak = Jarak(jarak: toInt(meter).toDouble());
      widget.jarak(jarak);
    }
  }
  int toInt(String input) {
    try {
      return int.parse(input);
    } catch (e) {
      return 0;
    }
  }
}
