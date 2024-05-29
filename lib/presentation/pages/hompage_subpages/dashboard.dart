import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:synapserx_v2/data/repository/provider.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';
import 'package:synapserx_v2/presentation/pages/transactions/last_10_transactions_widget.dart';
import 'package:synapserx_v2/presentation/pages/user/myprofile.dart';
import 'package:synapserx_v2/presentation/pages/widgets/imagecarousel_widget.dart';
import 'package:synapserx_v2/presentation/view_model/user/user_provider.dart';
import '../../../common/service.dart';
import '../../../domain/models/adimages.dart';
import '../prescription/createadhocpx_page.dart';
import '../prescription/getprescription_page.dart';
import '../prescription/selectpx_page.dart';
import '../user/useraccounts.dart';
import '../widgets/custom_synapse_button.dart';
import '../widgets/offlineindicator.dart';
import '../widgets/rxdrawer.dart';
import '../widgets/synapsedrawerbutton.dart' as dwb;

class HomeDashboardPage extends ConsumerStatefulWidget {
  const HomeDashboardPage({super.key});

  @override
  ConsumerState<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends ConsumerState<HomeDashboardPage> {
  final GlobalKey<ScaffoldState> _skey = GlobalKey();
  late UserProfile userProfile;
  String fullname = '';
  String mdcregno = '';
  List<ADImages> adimagesList = [];
  int currentIndex = 0;
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  // get stored full name of prescriber from secure storage
  Future<String?> getData(String key) async {
    const storage = FlutterSecureStorage();
    final String? value = await storage.read(key: key);
    return value;
  }

  Future<void> getAdImages() async {
    adimagesList = await ref.watch(systemDataProvider).getADImages();
    log('retrieved ad images');
    setState(() {});
  }

  Future<void> getUserDetails() async {
    try {
      await ref
          .read(userDataProvider)
          .fetchUserProfile()
          .then((userInfo) async => {
                await ref.read(settingsProvider).setUserInfoToStorage(userInfo),
              });
    } catch (err) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text(
              'User Profile Error!',
              textAlign: TextAlign.center,
            ),
            content: const Text(
                'A user profile for your login credentials does not exist. Please create a user profile to continue using synapseRx'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => ProfilePage(
                                  user: UserInfo(),
                                )),
                        ModalRoute.withName('/'));
                  },
                  child: const Text("Create Profile")),
              TextButton(onPressed: () {}, child: const Text('Cancel'))
            ],
          ),
        );
      }
    }
  }

  @override
  void initState() {
    //if (GlobalData.isOnline == true) {
    //getAdImages();
    //}
    getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: dwb.DrawerButton(
            key: _skey,
          ),
          title: const Text('synapseRx'),
        ),
        drawer: const RxDrawer(),
        body: SingleChildScrollView(
          child: Column(children: [
            const OfflineIndicator(),
            const SizedBox(
              height: 5,
            ),
            Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                decoration: (BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                )),
                child: Column(
                  children: [
                    Text(
                      greeting(),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FutureBuilder(
                        future: getData('fullname'),
                        builder: (context, AsyncSnapshot<String?> snapshot) {
                          if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }
                          if (snapshot.hasData) {
                            return Text(
                              '${snapshot.data}',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            );
                          }
                          return const Text('');
                        }),
                    const SizedBox(
                      height: 3,
                    ),
                    FutureBuilder(
                        future: getData('mdcregno'),
                        builder: (context, AsyncSnapshot<String?> snapshot) {
                          if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }
                          if (snapshot.hasData) {
                            return Text(
                              '${snapshot.data}',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            );
                          }
                          return const Text('');
                        }),
                  ],
                )),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'What would you like to do?',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04),
                    //textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RxButton(
                                icon: FontAwesomeIcons.filePrescription,
                                title: 'New\nPrescription',
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                onTap: () {
                                  GlobalData.defaultAccount.isEmpty
                                      ? Future.delayed(
                                          const Duration(seconds: 0),
                                          () => checkdefaultAccountSet(context))
                                      : showSelectPatientType(context, true);
                                }),
                            RxButton(
                                icon: Icons.qr_code_scanner,
                                title: 'Retrieve\nPrescription',
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GetPrescriptionPage()));
                                }),
                            RxButton(
                                icon: CupertinoIcons.lab_flask,
                                title: 'Request\nlabs',
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                onTap: () {
                                  GlobalData.defaultAccount.isEmpty
                                      ? Future.delayed(
                                          const Duration(seconds: 0),
                                          () => checkdefaultAccountSet(context))
                                      : showSelectPatientType(context, false);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Card(
                      child: ExpansionTile(
                          title: Text(
                            'Last 10 Orders/Requests',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035),
                          ),
                          children: const <Widget>[
                            TransactionsListView(),
                          ]),
                    ),
                  ),
                  ImageCarouselWidget(),
                ]),
          ]),
        ));
  }

  Future<dynamic> checkdefaultAccountSet(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                      onPressed: (() {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const UserAccountsPage()));
                      }),
                      child: const Text('Setup Account')),
                  TextButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      child: const Text('Cancel'))
                ],
                title: const Text(
                  'Account Setup Required',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
                content: const Text(
                  'You need to setup at least one Institution Account before you can start using synapseRx',
                  textAlign: TextAlign.center,
                )));
  }

  Future<dynamic> showSelectPatientType(
      BuildContext context, bool isprescription) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0))),
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: isprescription ? Colors.green : Colors.orange,
                        border: Border.all(
                            color:
                                isprescription ? Colors.green : Colors.orange),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0))),
                    child: const Text(
                      'Choose Patient Type',
                      textScaler: TextScaler.linear(1),
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    splashColor: const Color(0xFF3B4257),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAdhocPxPage(
                                  //isprescription: isprescription,
                                  )));
                    },
                    child: Card(
                      elevation: 8,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        //height: 60,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.person,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Adhoc Patient',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    'Choose this option for patients who are not registered on SynapseRx',
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    splashColor: const Color(0xFF3B4257),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectPatientPage(
                                  // title: 'Select Patient',
                                  // isprescription: isprescription,
                                  )));
                    },
                    child: Card(
                      elevation: 8,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        //height: 80,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.people,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              //flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Registered Patients',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    'Choose this option for patients who are registered on SynapseRx.You can select from your list or add them via their QR Code',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        });
  }
}
