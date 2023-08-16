// regras de negocio das moedas  => conversão de cada uma

class CurrencyModel {
  final String name; // nome da moeda
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;
  final double libra;
  final double peso;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin,
      required this.libra,
      required this.peso});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real',
          real: 1.0,
          dolar: 0.20,
          euro: 0.18,
          bitcoin: 0.000016,
          libra: 0.16,
          peso: 70.42),
      CurrencyModel(
          name: 'Dolar',
          real: 5.00,
          dolar: 1.0,
          euro: 0.92,
          bitcoin: 0.000088,
          libra: 0.78,
          peso: 349.98),
      CurrencyModel(
          name: 'Euro',
          real: 5.44,
          dolar: 1.109,
          euro: 1.0,
          bitcoin: 0.00010,
          libra: 0.86,
          peso: 381.97),
      CurrencyModel(
          name: 'Bitcoin',
          real: 145298.02,
          dolar: 29141.20,
          euro: 26692.61,
          bitcoin: 1,
          libra: 22858.36,
          peso: 10191855.15),
      CurrencyModel(
          name: 'Libra',
          real: 6.35,
          dolar: 1.27,
          euro: 1.17,
          bitcoin: 0.000044,
          libra: 1.0,
          peso: 445.97),
      CurrencyModel(
          name: 'Peso Argentino',
          real: 0.014,
          dolar: 0.0029,
          euro: 0.0026,
          bitcoin: 0.0000000980,
          libra: 0.0022,
          peso: 1.0),
    ];
  }
}
