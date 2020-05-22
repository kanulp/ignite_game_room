import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class BookSlotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Slot'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
      TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.format_list_numbered),  
            hintText: 'Enter id ( use, for multiple )',  
            labelText: 'ID',  
            ),  
            validator: (value) {  
              if (value.isEmpty) {  
                return 'Please enter valid data';  
              }  
              return null;  
            },  
      ),
      TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.email),  
            hintText: 'Enter Email',  
            labelText: 'Email',  
            ),  
            validator: (value) {  
              if (value.isEmpty) {  
                return 'Please enter valid data';  
              }  
              return null;  
            },  
      ),
      FlatButton.icon(icon: Icon(Icons.timer), label: Text('Choose Time'), onPressed: () {  

         DatePicker.showTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());

      },),

      SizedBox(
        height: 50.0,
      ),
      RaisedButton(color:Colors.green,onPressed: () {},
      child: Text('Submit'),),
      Text('Already Registered ? Login to easily book your slot.'),
      RaisedButton(color:Colors.green,onPressed: () {},
      child: Text('Login Here.'),),
      
      RaisedButton(onPressed: () {},
      child: Text('Take Survey'),color: Colors.blue,),

      ],),


    );
  }
}