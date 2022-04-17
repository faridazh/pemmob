class Jarak {
  double jarak;
  Jarak({this.jarak = 0});

  double getHasilKm() => jarak / 1000;
  double getHasilHm() => jarak / 100;
  double getHasilDam() => jarak / 10;
  double getHasilM() => jarak;
  double getHasilDm() => jarak * 10;
  double getHasilCm() => jarak * 100;
  double getHasilMm() => jarak * 1000;
}