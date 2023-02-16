import 'package:bloc/bloc.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../services/contact_service.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<ContactEvent>((event, emit) async {
      // TODO: handle permission here.....
      emit(ContactLoadingState());
      PermissionStatus permissionStatus =
          await ContactService.permissionHandler();
      if (permissionStatus.isGranted) {
        emit(ContactLoadedState(
            contactList: await ContactService.getContactList()));
      } else {
        emit(ContactPermissionDenied());
      }
    });
  }
}
