import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:synapserx_v2/domain/models/prescription.dart';

class EditPrescriptionPage extends ConsumerWidget {
  final Prescription prescription;
  EditPrescriptionPage(this.prescription, {super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var defaultAccount;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 36,
        ),
      ),
      appBar:
          AppBar(title: const Text('Editing Prescription'), actions: <Widget>[
        // icon to create prescription on server
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: const Text('Save'),
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ]),
      body: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: DropdownButtonFormField2(
                        value: defaultAccount,
                        decoration: InputDecoration(
                          isDense: false,
                          contentPadding: EdgeInsets.only(right: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        hint: const Text(
                          'Select an account to prescribe from',
                          style: TextStyle(fontSize: 14),
                        ),
                        iconStyleData: IconStyleData(
                          icon: Icon(
                            MdiIcons.badgeAccount,
                          ),
                        ),
                        items: [],
                      ))
                ])
              ])),
    );
  }
}
