class Token {
  final String msno;
  final String token;
  final String trn_TIMESTAMP;
  final double token_UNITS;
  final double token_AMOUNT;

  Token({
    this.msno, 
    this.token, 
    this.trn_TIMESTAMP, 
    this.token_UNITS,
    this.token_AMOUNT});

    factory Token.fromJson(Map<dynamic, dynamic> json) {
    return Token(
      msno: json['msno'],
      token: json['token'],
      trn_TIMESTAMP: json['trn_TIMESTAMP'],
      token_UNITS: json['token_UNITS'],
      token_AMOUNT: json['token_AMOUNT'],
    );
  }
}
