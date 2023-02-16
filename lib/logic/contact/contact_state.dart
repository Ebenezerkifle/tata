part of 'contact_bloc.dart';

@immutable
abstract class ContactState {}

class ContactInitial extends ContactState {}

class ContactLoadingState extends ContactState {}

class ContactLoadedState extends ContactState {
  final List<Contact> contactList;
  ContactLoadedState({required this.contactList});
}

class ContactPermissionDenied extends ContactState {}
