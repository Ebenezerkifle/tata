import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tata/presentation/widgets/custom_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    //Todo requires permission to access contacts
  }

  Future<void> permissionHandler() async {
    PermissionStatus permissionStatus = await _getContactpermission();
    if (permissionStatus == PermissionStatus.granted) {
      //Todo permission granted....
    } else {
      //Todo handle invalid permission....
    }
  }

  Future<PermissionStatus> _getContactpermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    print('permission------------------------');
    print(permission);
    // ignore: unrelated_type_equality_checks
    if (permission != Permission.contacts.isGranted &&
        // ignore: unrelated_type_equality_checks
        permission != Permission.contacts.isPermanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      return permissionStatus;
    }
    return permission;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tata',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Lists"),
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
                children: List.generate(
                    20, (index) => CustomeListWidget(context: context)))),
      ),
    );
  }
}
