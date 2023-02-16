import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactService {
  static Future<List<Contact>> getContactList() async {
    return await ContactsService.getContacts();
  }

  static Future<PermissionStatus> permissionHandler() async {
    PermissionStatus permissionStatus = await _getContactpermission();
    if (permissionStatus == PermissionStatus.granted) {
      //Todo permission granted....
    } else {
      //Todo handle invalid permission....
      //_handleInvalidPermissions(permissionStatus);
    }
    return permissionStatus;
  }

  static Future<PermissionStatus> _getContactpermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    print('permission------------------------');
    print(permission);
    // ignore: unrelated_type_equality_checks
    if (permission.isDenied)
    // &&
    // ignore: unrelated_type_equality_checks
    //  permission != Permission.contacts.isPermanentlyDenied
    {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      return permissionStatus;
    }
    return permission;
  }

  // static void _handleInvalidPermissions(PermissionStatus permissionStatus) {
  //   if (permissionStatus == PermissionStatus.denied) {
  //     final snackBar = SnackBar(content: Text('Access to contact data denied'));
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
  //     final snackBar =
  //         SnackBar(content: Text('Contact data not available on device'));
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }
}
