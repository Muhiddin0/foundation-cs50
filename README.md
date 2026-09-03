# Foundation with CS50

Ushbu repository CS50 mavzularidan foydalanib, dasturlashni noldan
o'rganayotgan o'quvchilar uchun o'zbek tilidagi foundation kitobini yozish
uchun mo'ljallangan.

## Kitob konsepsiyasi

- **Auditoriya:** dasturlash bo'yicha tajribasi yo'q yoki juda kam o'quvchilar.
- **Asosiy maqsad:** o'quvchida algoritmik fikrlash, dasturlash asoslari va
  mustaqil loyiha yaratish ko'nikmalarini shakllantirish.
- **O'qitish usuli:** sodda tushuntirish, hayotiy misol, kod namunasi, mashq
  va mini-loyiha.
- **Asosiy til:** o'zbek tili; muhim inglizcha terminlar qavs ichida beriladi.

Kitob tugagach, o'quvchi muammoni qismlarga ajrata olishi, algoritm tuzishi,
C va Python tillarida oddiy dasturlar yozishi, SQL bilan ma'lumot saqlashi
hamda sodda web-loyiha yaratishi kerak.

## Loyihaning tuzilishi

```text
.
├── book.toml              # mdBook sozlamalari
├── book/                  # mdBook manbalari
│   ├── README.md          # Darslikning bosh sahifasi
│   ├── SUMMARY.md         # Mundarija va boblar tartibi
│   ├── GLOSSARY.md        # Terminlar lug'ati
│   ├── lecture-0/         # 0-ma'ruza mavzulari
│   └── assets/            # Rasm va diagrammalar
├── dist/                  # Yaratilgan sayt; Git tomonidan kuzatilmaydi
├── exercises/             # Mashqlar va yechim yozish qoidalari
├── references/            # Foydalanilgan manbalar
├── templates/             # Yangi bob uchun tayyor qolip
├── STYLE_GUIDE.md         # Til va format bo'yicha qo'llanma
└── lectures.txt           # CS50 ma'ruza havolalari
```

## Ishlash tartibi

1. [Mundarija](book/SUMMARY.md)dan navbatdagi bobni tanlang.
2. Bobni [qolip](templates/chapter-template.md) asosida yozing.
3. Yangi terminlarni [lug'atga](book/GLOSSARY.md) kiriting.
4. Rasm va diagrammalarni `book/assets/` ichida saqlang.
5. Foydalanilgan materialni `references/` ichida qayd eting.
6. Bobni o'quvchida sinab, tushunarsiz joylarini qayta ishlang.

## mdBook bilan ko'rish

mdBook o'rnatilgan kompyuterda darslikni lokal ochish:

```bash
mdbook serve --open
```

Tayyor HTML saytni `dist/` katalogiga yaratish:

```bash
mdbook build
```

`main` tarmog'iga yuborilgan o'zgarishlar GitHub Actions orqali avtomatik
ravishda GitHub Pages uchun tayyorlanadi.

## Hozirgi bosqich

mdBook strukturasi va 0-ma'ruzaning dastlabki mavzulari tayyor. Keyingi qadam —
0-ma'ruzaning navbatdagi mavzularini yozish.
