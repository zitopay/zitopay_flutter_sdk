part of zitopay;

class Zitopay{
  String amount;
  String receiver;
  String currency;
  String email;
  String success_url;
  String cancel_url;
  String notification_url;
  String receiver2;
  String receiver3;
  String sf;

  Zitopay(this.amount,this.receiver, [ this.currency = 'XAF', this.email =" ", this.cancel_url =" ", this.success_url =" ",this.notification_url =" ", this.receiver2 =" ",this.receiver3 =" ",this.sf = " "]);

  pay()  {
    var url = 'https://zitopay.africa/sci?';
    var concatURL = url;
    // var concatURL = url + "currency="+currency + "&amount=" + amount + "&receiver=" + receiver + "&email=" + email + "&success_url=" +success_url + "&cancel_url=" +cancel_url + "&notification_url=" + notification_url + "&receiver2=" + receiver2 + "&receiver3=" +receiver3 + "&sf=" + sf;
    var array = [amount, receiver,currency,email,success_url,cancel_url,notification_url,receiver2, receiver3,sf];
    var index = ["amount", "receiver", "currency", "email", "success_url","cancel_url","notification_url","receiver2", "receiver3","sf"];

    for (var i=0; i<10; i++){
      if(array[i] != " "){
        concatURL += index[i] + "=" + array[i] + "&";
      }
    }
    var paylink =  concatURL.substring(0, concatURL.length - 1);
    return paylink;
  }
}
