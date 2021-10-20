// Validation methods 


String? emailValidation(String text) {
  if (RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(text)) {
    return null;
  } else if(text.isEmpty)
  {
return null;
  }
   else {
    return 'Please enter valid Email Address';
  }
}

