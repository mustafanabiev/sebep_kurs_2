class Suroo {
  const Suroo({
    required this.text,
    required this.surot,
    required this.jooptor,
  });
  final String text;
  final String surot;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.tuuraJoop = false,
  });

  final String text;
  final bool tuuraJoop;
}

List<Suroo> asiaSurooloru = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

const s1 = Suroo(
  text: 'Ашхабат',
  surot: 'ashhabad',
  jooptor: [
    Joop(text: 'Туркмөнстан', tuuraJoop: true),
    Joop(text: 'Тажикстан'),
    Joop(text: 'Сирия'),
    Joop(text: 'Индия'),
  ],
);

const s2 = Suroo(
  text: 'Астана',
  surot: 'astana',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Казакстан', tuuraJoop: true),
    Joop(text: 'Россия'),
    Joop(text: 'Кытай'),
  ],
);

const s3 = Suroo(
  text: 'Бишкек',
  surot: 'bishkek',
  jooptor: [
    Joop(text: 'Шриланка'),
    Joop(text: 'Малазия'),
    Joop(text: 'Узбекстан'),
    Joop(text: 'Кыргызстан', tuuraJoop: true),
  ],
);

const s4 = Suroo(
  text: 'Душанбе',
  surot: 'dushanbe',
  jooptor: [
    Joop(text: 'Миянма'),
    Joop(text: 'Тажикстан', tuuraJoop: true),
    Joop(text: 'Иордания'),
    Joop(text: 'Пакистан'),
  ],
);

const s5 = Suroo(
  text: 'Нью-Дели',
  surot: 'new-delhi',
  jooptor: [
    Joop(text: 'Индия', tuuraJoop: true),
    Joop(text: 'Япония'),
    Joop(text: 'Корея'),
    Joop(text: 'Сингапур'),
  ],
);

const s6 = Suroo(
  text: 'Пекин',
  surot: 'pekin',
  jooptor: [
    Joop(text: 'Азербайжан'),
    Joop(text: 'Таиланд'),
    Joop(text: 'Кытай', tuuraJoop: true),
    Joop(text: 'Ветнам'),
  ],
);

const s7 = Suroo(
  text: 'Сеул',
  surot: 'seul',
  jooptor: [
    Joop(text: 'Палестина'),
    Joop(text: 'Иран'),
    Joop(text: 'Непал'),
    Joop(text: 'Корея', tuuraJoop: true),
  ],
);

const s8 = Suroo(
  text: 'Ташкент',
  surot: 'tashkent',
  jooptor: [
    Joop(text: 'Сауд Аравия'),
    Joop(text: 'Узбекстан', tuuraJoop: true),
    Joop(text: 'Катар'),
    Joop(text: 'Оман'),
  ],
);

const s9 = Suroo(
  text: 'Токио',
  surot: 'tokyo',
  jooptor: [
    Joop(text: 'Филипин'),
    Joop(text: 'Монголия'),
    Joop(text: 'Япония', tuuraJoop: true),
    Joop(text: 'ОАЭ'),
  ],
);

const s10 = Suroo(
  text: 'Улан Батор',
  surot: 'ulan_bator',
  jooptor: [
    Joop(text: 'Монголия', tuuraJoop: true),
    Joop(text: 'Грузия'),
    Joop(text: 'Армения'),
    Joop(text: 'Малазия'),
  ],
);
