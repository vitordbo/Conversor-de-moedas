// regras de negocio das moedas  => conversão de cada uma

class CurrencyModel {
  final String name; // nome da moeda
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.20, euro: 0.18, bitcoin: 0.000016),
      CurrencyModel(
          name: 'Dolar', real: 5.00, dolar: 1.0, euro: 0.92, bitcoin: 0.000088),
      CurrencyModel(
          name: 'Euro', real: 5.44, dolar: 1.109, euro: 1.0, bitcoin: 0.00010),
      CurrencyModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcoin: 1),
    ];
  }
}
