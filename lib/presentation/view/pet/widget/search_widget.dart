import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'Search by pet type',
        hintStyle: TextStyle(fontSize: 22, color: Theme.of(context).colorScheme.primaryContainer),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primary.withOpacity(.5),
        contentPadding: const EdgeInsetsDirectional.only(
          start: 15,
        ),
        prefixIcon: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: SizedBox(
            width: 16,
            height: 16,
            child: Image.asset('assets/images/magnifier.png'),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
