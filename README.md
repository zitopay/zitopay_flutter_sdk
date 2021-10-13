# Zitopay Flutter SDK
This sdk aims at simplifying integration of zitopay into flutter projects.

##### Description
Calls a class `Zitopay` from the imported package with a single operational function `.pay()`.
The constructor `Zitopay(...)` takes parameters in the order:
```dart 
  BuildContext context; 		 //build context
  String amount;  		//the amount to be paid
  String receiver;  		// the username or email of the one receiving the payment
  String currency; 			 // the payment currency. default if "XAF"
  String email;   				// the payers email
  String success_url;  		// endpoint upon successfull payment
  String cancel_url;  		// endpoint upon failed or canelled payment
  String notification_url;;  		// endpoint for payment information
  String receiver2;   		//  2rd receiver incase of split payment
  String receiver3;  		// 3rd receiver incase of split payment
  String sf;     //sharing formula. Should be of format "receiver-receiver2-receiver3"
```

##### Sample

` Zitopay(context, "5000", "democreator").pay(),`

###### Note
The following options are required :
1. The BuildContext
2. The amount
3. The receiver (Zitopay username or email)

The` pay()` function must be invoked.

------------



#### Installation.
###### Note.
This flutter package works only with andriod sdk v19 and above. If your project is of a lower andriod sdk version,  please update it before using this package

##### Install Package
First Install the package

`flutter pub get zitopay`

##### Use package
This pay function of returns an elevated button widge. Sample usage

    import 'package:flutter/material.dart';
    import 'package:zitopay/zitopay.dart';
     
        . 
    		.
    		.
    
          floatingActionButton: Zitopay(context,"5000","democreator").pay(),
        .  
    		.
    		.
    


