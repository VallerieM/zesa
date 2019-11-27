class Pjob {
  final String address;
  final String desc_TIPO;
  final String region;
  final String district;
  final String depot;
  final String num_EXP;
  final String estado;
  final String desc_EST;
  final String customer_NAME;

  Pjob({
    this.address,
    this.desc_TIPO,
    this.region,
    this.district,
    this.depot,
    this.num_EXP,
    this.estado,
    this.desc_EST,
    this.customer_NAME,
  });

  factory Pjob.fromJson(Map<String, dynamic> json) {
    return Pjob(
      address: json['address'],
      desc_TIPO: json['desc_TIPO'],
      region: json['region'],
      district: json['district'],
      depot: json['depot'],
      num_EXP: json['num_EXP'],
      estado: json['estado'],
      desc_EST: json['desc_EST'],
      customer_NAME: json['customer_NAME'],
    );
  }
}