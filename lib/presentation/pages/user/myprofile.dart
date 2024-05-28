import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signature/signature.dart';
import 'package:synapserx_v2/common/auth_service.dart';
import 'package:synapserx_v2/common/service.dart';
import 'package:synapserx_v2/data/repository/provider.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/main.dart';
import 'package:synapserx_v2/presentation/pages/widgets/snackbar.dart';

import '../widgets/loadingindicator.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({
    super.key,
    required this.user,
  });
  final UserInfo user;

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController mdcRegController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController specialtyController = TextEditingController();
  final ScrollController controllerOne = ScrollController();
  bool replacingSignature = false;
  SignatureController signatureController =
      SignatureController(penStrokeWidth: 2.0, penColor: Colors.deepPurple);

  Uint8List? signatureImage;
  bool isSignaturePresent = false;
  bool isSignaturechanged = false;
  bool hasProfileChanged = false;
  String countryCode = '';

  String? dropdownvalue = 'Dr';
  var items = [
    'Prof',
    'Dr',
    'Mr',
    'Mrs',
    'Ms',
  ];

  List<String> specialty = [];

  List<String> listOfSpecialties = [
    'Internal Medicine',
    'Paediatrics',
    'Obstetrics and Gynaecology',
    'General Surgery',
    'Psychiatry',
    'Anaesthesia',
    'Emmergency Medicine',
    'Family Medicine',
    'Laboratory Medicine',
    'Pathology',
    'Ophthalmology',
    'Otorhinolaryngology',
    'Public Health',
    'Radiology',
    'Oncology & Radiation Medicine',
  ];

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent),
                    onPressed: hasProfileChanged
                        ? (() {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Confirmation"),
                                  content: const Text(
                                      "Do you want to exit updating your profile without saving the changes "),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text("Yes"),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // pop first time to close the dialog
                                        Navigator.of(context)
                                            .pop(); // pop again to return to the previous screen
                                      },
                                    ),
                                    TextButton(
                                      child: const Text("No"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          })
                        : null,
                    child: const Text('Cancel')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: hasProfileChanged
                        ? () async {
                            if (_formKey.currentState!.validate()) {
                              await createUserInfo();
                              // Navigator.pop(context);
                            }
                          }
                        : null,
                    child: const Text('Save')),
              ],
            )),
        appBar: AppBar(title: (const Text('Update User Profile'))),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      isDense: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                          hintText: 'Enter your title'),
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          hasProfileChanged = true;
                          dropdownvalue = newValue.toString();
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) => setState(() {
                        hasProfileChanged = true;
                      }),
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Surname',
                          hintText: 'Enter your Surname'),
                      controller: surnameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) => setState(() {
                        hasProfileChanged = true;
                      }),
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name',
                          hintText: 'Enter your first name'),
                      controller: firstnameController,
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      textCapitalization: TextCapitalization.characters,
                      onChanged: (value) => setState(() {
                        hasProfileChanged = true;
                      }),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'MDC Reg No',
                          hintText: 'Enter your MDC Reg No'),
                      keyboardType: TextInputType.text,
                      validator: (val) {
                        if ((val!.isNotEmpty) &&
                            !RegExp(r"MDC\/RN\/\d{4,}").hasMatch(val)) {
                          return "Enter a valid MDC Reg No";
                        }
                        return null;
                      },
                      controller: mdcRegController,
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      onChanged: (value) => setState(() {
                        hasProfileChanged = true;
                      }),
                      decoration: InputDecoration(
                          prefixIcon: CountryCodePicker(
                            showDropDownButton: true,
                            favorite: const ['GH', 'GB', 'US', 'NG', '+27'],
                            initialSelection:
                                countryCode == '+44' ? 'GB' : countryCode,
                            onChanged: (value) => _onCountryChange(value),
                          ),
                          border: const OutlineInputBorder(),
                          labelText: 'Cell Phone Number',
                          hintText: 'Enter your cellphone number'),
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        if ((val!.isNotEmpty) &&
                            !RegExp(r"^(\d+)*$").hasMatch(val)) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                      controller: telephoneController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Specialty and Interests',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(),
                      ),
                      child: Scrollbar(
                        controller: controllerOne,
                        thumbVisibility: true, //always show scrollbar
                        trackVisibility: true,
                        thickness: 5, //width of scrollbar
                        radius: const Radius.circular(
                            20), //corner radius of scrollbar
                        scrollbarOrientation: ScrollbarOrientation.right,
                        child: SingleChildScrollView(
                          controller: controllerOne,
                          child: ChipsChoice<String>.multiple(
                            value: specialty,
                            onChanged: (val) => setState(() {
                              specialty = val;
                              hasProfileChanged = true;
                            }),
                            choiceItems: C2Choice.listFrom<String, String>(
                              source: listOfSpecialties,
                              value: (i, v) => v,
                              label: (i, v) => v,
                              tooltip: (i, v) => v,
                            ),
                            choiceCheckmark: true,
                            choiceStyle: C2ChipStyle.outlined(
                              color: Colors.grey,
                              checkmarkColor: Colors.blue,
                            ),
                            wrapped: true,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Signature',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(),
                      ),
                      child: replacingSignature
                          ? Signature(
                              controller: signatureController,
                              backgroundColor: Colors.transparent,
                            )
                          : isSignaturePresent
                              ? Center(child: Image.memory(signatureImage!))
                              : const Center(
                                  child: Text('No signature provided')),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: replacingSignature ? null : () {},
                            child: const Text('Remove')),
                        TextButton(
                            onPressed: replacingSignature
                                ? null
                                : () {
                                    replacingSignature = true;
                                    setState(() {});
                                  },
                            child: isSignaturePresent
                                ? const Text('Change')
                                : const Text('Add')),
                        Row(
                          children: [
                            TextButton(
                                onPressed: replacingSignature
                                    ? () {
                                        signatureController.clear();
                                      }
                                    : null,
                                child: const Text('Clear')),
                            TextButton(
                                onPressed: replacingSignature
                                    ? () async {
                                        signatureImage =
                                            await signatureController
                                                .toPngBytes();
                                        if (signatureImage != null) {
                                          isSignaturechanged = true;
                                          isSignaturePresent = true;
                                        } else {
                                          isSignaturechanged = false;
                                          isSignaturePresent = false;
                                        }
                                        setState(() {
                                          replacingSignature = false;
                                          hasProfileChanged = true;
                                        });
                                      }
                                    : null,
                                child: const Text('Save')),
                            TextButton(
                                onPressed: replacingSignature
                                    ? () {
                                        setState(() {
                                          replacingSignature = false;
                                        });
                                      }
                                    : null,
                                child: const Text('Discard'))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
        ));
  }

  getUserInfo() async {
    setState(() {
      firstnameController.text = widget.user.firstname ?? '';
      surnameController.text = widget.user.surname ?? '';
      telephoneController.text = widget.user.telephoneNo ?? '';
      mdcRegController.text = widget.user.email ?? '';
      dropdownvalue = widget.user.title;
      countryCode = widget.user.countryCode ?? "+233";
      if (widget.user.specialty != null) {
        specialty = widget.user.specialty!;
      }
      if (widget.user.signature != null) {
        signatureImage = base64Decode(widget.user.signature!);
        isSignaturePresent = true;
      }
    });
  }

  Future<void> updateUserInfo() async {
    var params = {
      "firstname": firstnameController.text,
      "surname": surnameController.text,
      "telephoneNo": telephoneController.text,
      "prescriberMDCRegNo": mdcRegController.text,
      "countryCode": countryCode,
      "title": dropdownvalue,
      "specialty": specialty,
    };
    if (isSignaturechanged) {
      final newsignature = base64.encode(signatureImage as List<int>);
      params.addEntries({"signature": newsignature}.entries);
    }

    try {
      LoadingIndicatorDialog().show(context, 'Updating your user profile ...');

      LoadingIndicatorDialog().dismiss();
      scaffoldMessengerKey.currentState!.showSnackBar(const SnackBar(
        content: Text('Your profile has been successfully updated'),
        backgroundColor: Colors.green,
      ));
      if (isSignaturechanged) {
        GlobalData.signature = base64.encode(signatureImage as List<int>);
      }
      if (context.mounted) Navigator.of(context).pop();
    } catch (e) {
      LoadingIndicatorDialog().dismiss();
      scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
        content: Text('Error updating your user info: $e'),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<void> createUserInfo() async {
    var email = await Authentication().getFirebaseUserEmail();
    UserInfo userInfo = UserInfo(
        firstname: firstnameController.text,
        surname: surnameController.text,
        telephoneNo: telephoneController.text,
        prescriberMDCRegNo: mdcRegController.text,
        countryCode: countryCode,
        title: dropdownvalue,
        specialty: specialty,
        email: email,
        signature: isSignaturechanged
            ? base64.encode(signatureImage as List<int>)
            : null);
    try {
      LoadingIndicatorDialog().show(context, 'Creating your user profile ...');
      await ref.read(userProfileProvider).createUserProfile(userInfo);

      LoadingIndicatorDialog().dismiss();
      CustomSnackBar.showSuccessSnackBar(context,
          message: 'Your profile has been successfully createdd');
      if (isSignaturechanged) {
        GlobalData.signature = base64.encode(signatureImage as List<int>);
      }
      if (context.mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      LoadingIndicatorDialog().dismiss();
      CustomSnackBar.showErrorSnackBar(context, message: '$e');
    }
  }

  void _onCountryChange(CountryCode countryCodeSelected) {
    setState(() {
      hasProfileChanged = true;
      countryCode = countryCodeSelected.dialCode.toString();
    });
  }
}
