# ASCII: matnni sonlar orqali ifodalash

> **Holat:** tayyor

## Dars haqida

Oldingi darsda kompyuter sonlarni `0` va `1` lar yordamida ifodalashini
o'rgandik. Ammo kompyuter faqat sonlar bilan ishlamaydi: biz unda ism yozamiz,
xabar yuboramiz va kitob o'qiymiz. Harflar, raqam belgilari va tinish belgilarini
ham bitlar yordamida saqlash uchun umumiy kelishuv kerak.

ASCII ana shunday kelishuvlardan biridir. U har bir belgiga ma'lum bir sonni
moslaydi. Kompyuter sonni ikkilik ko'rinishda saqlaydi, dastur esa bu sonni
kerakli belgi sifatida talqin qiladi.

## O'quv maqsadlari

Bu darsni tugatgach, siz:

- kompyuter matnni qanday qilib sonlar orqali ifodalashini tushuntira olasiz;
- ASCII jadvalidan belgi kodini topa olasiz;
- belgini o'nlik va ikkilik kodga aylantira olasiz;
- ASCII kodlar ketma-ketligini matnga qaytara olasiz;
- ASCII imkoniyatlari va cheklovlarini tushuntira olasiz.

## Boshlashdan oldin

- **Zarur bilimlar:** bit, bayt va ikkilik sanoq tizimi.
- **Kerakli dasturlar:** kerak emas.
- **Taxminiy vaqt:** 30–40 daqiqa.

## Asosiy terminlar

| Termin | Inglizcha nomi | Izoh |
| --- | --- | --- |
| Belgi | Character | Matndagi bitta harf, raqam yoki ishora. |
| Belgilar to'plami | Character set | Belgilar va kodlar jadvali. |
| Kodlash | Encoding | Belgini son yoki bitlarga aylantirish. |
| Dekodlash | Decoding | Koddan belgini qayta tiklash. |
| ASCII | ASCII | 128 ta koddan iborat belgilar standarti. |
| Nazorat belgisi | Control character | Ko'rinmaydigan boshqaruv belgisi. |

## 1. Kompyuter harfni qanday saqlaydi?

Kompyuter xotirasi belgining shaklini bevosita saqlamaydi. Avval belgi biror
songa moslanadi, keyin shu son ikkilik ko'rinishda yoziladi.

Masalan, ASCII standartida katta `A` harfiga `65` soni berilgan:

```text
A  →  65₁₀  →  01000001₂
```

`65` sonining ikkilik ko'rinishini o'rin qiymatlari orqali tekshiramiz:

```text
128  64  32  16   8   4   2   1
  0   1   0   0   0   0   0   1

64 + 1 = 65
```

Demak, `01000001₂` bitlar ketma-ketligi ASCII qoidasi bo'yicha talqin qilinsa,
ekranda `A` harfi ko'rsatiladi.

Bu yerda **talqin** juda muhim. `01000001₂` ning son sifatidagi qiymati `65`.
ASCII jadvali esa «65 kodi `A` belgisini bildiradi» degan qoida beradi. Bitlarning
o'zi harf yoki son emas; ularga ma'noni qo'llanilayotgan standart beradi.

## 2. ASCII nima?

ASCII — *American Standard Code for Information Interchange* nomining
qisqartmasi. Uni o'zbekchada «Axborot almashish uchun Amerika standart kodi»
deb tushunish mumkin.

Standartning vazifasi turli kompyuter va dasturlar bir xil sonni bir xil belgi
sifatida tushunishini ta'minlashdir. Masalan, bir qurilma `65` ni `A` deb yuborsa,
boshqa qurilma ham uni `A` deb qabul qiladi.

ASCII `0` dan `127` gacha bo'lgan 128 ta koddan foydalanadi. Chunki yetti bit:

```text
2⁷ = 128 ta turli qiymat
```

Amalda ASCII belgisi ko'pincha sakkiz bitli baytda saqlanadi. Bunday paytda eng
chap bit `0` bo'ladi:

```text
A = 65₁₀ = 1000001₂ = 01000001₂
                     ↑
              sakkiz bitli yozuv
```

Sakkiz bit jami 256 ta holat yarata oladi, ammo standart ASCII ularning faqat
birinchi 128 tasini, ya'ni `0`–`127` oralig'ini belgilaydi.

## 3. ASCII jadvalining tuzilishi

ASCII kodlari bir nechta guruhga ajraladi:

| Kodlar oralig'i | Mazmuni |
| --- | --- |
| `0`–`31` | Ko'rinmaydigan nazorat belgilari. |
| `32` | Bo'sh joy belgisi. |
| `33`–`47` | Tinish va maxsus belgilar. |
| `48`–`57` | `0` dan `9` gacha bo'lgan raqam belgilari. |
| `65`–`90` | Katta lotin harflari. |
| `97`–`122` | Kichik lotin harflari. |
| `127` | `DEL` nazorat belgisi. |

Quyidagi kichik jadval keyingi misol va mashqlar uchun yetarli:

| Belgi | O'nlik kod | Belgi | O'nlik kod |
| --- | --- | --- | --- |
| bo'sh joy | 32 | `!` | 33 |
| `0` | 48 | `5` | 53 |
| `A` | 65 | `C` | 67 |
| `H` | 72 | `I` | 73 |
| `L` | 76 | `M` | 77 |
| `O` | 79 | `S` | 83 |
| `Z` | 90 | `a` | 97 |

ASCII katta va kichik harflarni alohida belgilar deb hisoblaydi. Masalan:

```text
A = 65
a = 97
```

Shuning uchun dastur uchun `A` va `a` har doim ham bir xil emas.

## 4. `HI!` xabarini kodlash

Endi `HI!` matnidagi har bir belgini ASCII jadvalidan topamiz:

| Belgi | O'nlik kod | Sakkiz bitli ikkilik kod |
| --- | --- | --- |
| `H` | 72 | `01001000` |
| `I` | 73 | `01001001` |
| `!` | 33 | `00100001` |

Matnning o'nlik kodlar ketma-ketligi:

```text
H   I   !
72  73  33
```

Xotirada esa u quyidagicha ko'rinishi mumkin:

```text
01001000 01001001 00100001
```

Kodlash (encoding) vaqtida matn belgilaridan kodlarga o'tdik:

```text
HI!  →  72 73 33  →  01001000 01001001 00100001
```

Dekodlash (decoding) vaqtida shu jarayonni teskari bajaramiz:

```text
01001000 01001001 00100001  →  72 73 33  →  HI!
```

## 5. Ko'rinmaydigan belgilar ham mavjud

Matndagi barcha belgilar ekranda ko'rinmaydi. Ayrim kodlar dastur yoki qurilmaga
amal bajarishni bildiradi. Ular nazorat belgilari (control characters) deyiladi.

Masalan:

- `10` — yangi qatorga o'tish belgisi (`LF`, line feed);
- `13` — karetka boshiga qaytish belgisi (`CR`, carriage return);
- `0` — nol belgisi (`NUL`, null character).

Bo'sh joy ham ko'rinmasa-da, matnning haqiqiy belgisi hisoblanadi va uning ASCII
kodi `32`. Masalan, `HI!` va `HI !` bir xil matn emas: ikkinchisida `I` bilan
`!` orasida yana bir belgi mavjud.

## 6. Raqam belgisi va son bir xil emas

Ekrandagi `5` belgisi bilan hisob-kitobdagi `5` sonini farqlash kerak.

- son sifatidagi `5` sakkiz bitda `00000101₂` bo'lishi mumkin;
- matndagi `5` belgisining ASCII kodi `53`, ya'ni `00110101₂`.

```text
5 soni       → 00000101₂
"5" belgisi  → 00110101₂
```

Ko'rinishda ikkalasi ham beshga bog'liq, lekin kompyuter ularni turli maqsadda
ishlatadi. Biri hisoblash uchun son, ikkinchisi esa matn tarkibidagi belgi.
Dasturlashda ma'lumot turini to'g'ri tanlash shu sababli muhimdir.

## 7. ASCII standarti chegarasi

ASCII ingliz tili uchun yaratilgan. Unda lotin alifbosining asosiy harflari,
raqamlar va keng tarqalgan tinish belgilari bor. Ammo dunyodagi barcha yozuvlarni
128 ta kodga joylashtirib bo'lmaydi.

Masalan, ASCII quyidagilarni to'g'ridan-to'g'ri ifodalay olmaydi:

- o'zbek kirill alifbosidagi harflarni;
- arab, xitoy, yapon va boshqa yozuvlarni;
- `é`, `ñ` kabi qo'shimcha belgili harflarni;
- emoji belgilarini;
- o'zbekcha `oʻ` va `gʻ` dagi maxsus tipografik belgini.

Oddiy `'` apostrofi ASCII jadvalida bor. Shu sababli `o'` shaklini yozish
mumkin, ammo tipografik `oʻ` shaklidagi maxsus belgi ASCII tarkibiga kirmaydi.

Ko'proq tillar va belgilarni yagona standartda ifodalash uchun Unicode
yaratilgan. Uni keyingi darsda o'rganamiz.

## Ko'p uchraydigan xatolar

- **Xato:** ASCII standartining o'zi ikkilik sanoq tizimi deb o'ylash.
  **Sabab va yechim:** ASCII belgilarni sonlarga moslaydigan jadval. Sonlar esa
  xotirada ikkilik ko'rinishda saqlanadi.

- **Xato:** `A` va `a` ni bitta kod deb hisoblash.
  **Sabab va yechim:** katta `A` kodi `65`, kichik `a` kodi esa `97`.

- **Xato:** matndagi `5` bilan matematik `5` bir xil saqlanadi deb o'ylash.
  **Sabab va yechim:** `"5"` belgisining ASCII kodi `53`; sonning qiymati esa
  `5`.

- **Xato:** ASCII barcha tillarni ifodalay oladi deb hisoblash.
  **Sabab va yechim:** standartda atigi 128 ta kod bor. Boshqa yozuvlar uchun
  Unicode kabi kengroq standart kerak.

## Amaliy mashqlar

### 1-mashq — Kodni matnga aylantiring

Quyidagi ASCII kodlarini jadval yordamida o'qing:

```text
67 83 53 48
```

Har bir son qaysi belgiga mos kelishini alohida yozing, keyin belgilarni
birlashtiring.

### 2-mashq — So'zni kodlang

`SALOM!` matnidagi har bir belgining o'nlik ASCII kodini toping. Natijani
quyidagi shaklda yozing:

```text
S  → ...
A  → ...
L  → ...
O  → ...
M  → ...
!  → ...
```

### 3-mashq — O'nlikdan ikkilikka

Quyidagi belgilar kodini sakkiz bitli ikkilik ko'rinishga o'tkazing:

1. `A` — `65`
2. `H` — `72`
3. `!` — `33`

Har bir javobni o'rin qiymatlari yordamida tekshiring.

### 4-mashq — Farqni tushuntiring

Quyidagi ikki bitlar ketma-ketligini taqqoslang:

```text
00000101
00110101
```

Ulardan qaysi biri `5` sonini, qaysi biri ASCII jadvalidagi `5` belgisini
mumkin? Javobingizni o'nlik qiymatlar yordamida asoslang.

## Mini-loyiha — ASCII xabar almashinuvi

- **Vazifa:** kamida beshta ASCII belgisidan iborat maxfiy xabar tuzing.
- **Kodlash:** har bir belgini avval o'nlik, keyin sakkiz bitli ikkilik kodga
  aylantiring.
- **Sinov:** faqat kodlar ketma-ketligini sherigingizga bering va undan xabarni
  tiklashni so'rang.
- **Qabul mezonlari:** har bir belgi, o'nlik kod va ikkilik kod jadvalda
  ko'rsatilishi; tiklangan xabar asl xabar bilan bir xil bo'lishi kerak.

## O'zingizni tekshiring

1. Nega matnni saqlash uchun belgilar standarti kerak?
2. ASCII standartida katta `A` harfining o'nlik va ikkilik kodi qanday?
3. ASCII nechta kodni belgilaydi va buning uchun nechta bit yetarli?
4. `72 73 33` kodlari qaysi matnni bildiradi?
5. Nega `5` soni bilan `"5"` belgisi xotirada turlicha ifodalanishi mumkin?
6. ASCII nega o'zbek tilidagi barcha belgilar uchun yetarli emas?

## Dars xulosasi

- Kompyuter matn belgilarini sonlar orqali ifodalaydi.
- ASCII har bir belgini `0`–`127` oralig'idagi kodga moslaydi.
- Yetti bit 128 ta qiymat uchun yetadi; ASCII amalda ko'pincha baytda saqlanadi.
- Bir xil bitlar qaysi qoida ishlatilishiga qarab son yoki belgi sifatida talqin
  qilinishi mumkin.
- Katta va kichik harflar, bo'sh joy hamda raqam belgilari alohida kodlarga ega.
- ASCII standarti imkoniyatlari cheklangan; ko'proq tillar va belgilar uchun Unicode
  kerak bo'ladi.

## Foydalanilgan manba

- [CS50x 2026, Lecture 0 — ASCII](https://cs50.harvard.edu/x/notes/0/#ascii)
  — matnni sonlar va ikkilik kodlar orqali ifodalash.
