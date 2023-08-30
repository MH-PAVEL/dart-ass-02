import 'encapsulation.dart';

void main(){
  BankAcc pavel = BankAcc("37373-838383", 'MH Pavel');
  print(pavel.bankAccNo);
  print(pavel.accHolderName);
  print(pavel.getCurrentBalance);
  pavel.setCurrentBalance = 40.40;
  print(pavel.getCurrentBalance);
  print(pavel.getTax);

}