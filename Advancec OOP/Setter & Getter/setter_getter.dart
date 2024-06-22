class Encapsulation {
  // setter method using set keyword
  // set for input but cant directly access class's attributes

  var _account;
  var _password;

  // to set attributes values
  set account(var account) {
    this._account = account;
  }
  // to get attributes values.
  //  this type of getter define ways to create more safety
  get account => _account;
}
