# Informatika va muammoni yechish

> **Holat:** tayyor

## Dars haqida

Kompyuter juda tez hisoblaydi, katta hajmdagi ma'lumotni saqlaydi va berilgan
ko'rsatmalarni takror-takror bajaradi. Ammo u qaysi muammoni hal qilish kerakligini
o'zi belgilamaydi. Avval inson muammoni tushunadi, kerakli ma'lumotlarni aniqlaydi
va natijaga olib boradigan jarayonni ishlab chiqadi.

Ushbu darsda muammoni **kirish → qayta ishlash → chiqish** modeli yordamida
tahlil qilamiz. Shuningdek, kompyuter sonlarni nega ikkilik sanoq tizimida
ifodalashi, bit va bayt nima ekanini bosqichma-bosqich o'rganamiz.

## O'quv maqsadlari

Bu darsni tugatgach, siz:

- muammoning kirish va chiqish ma'lumotlarini aniqlay olasiz;
- bir asosli, o'nlik va ikkilik sanoq tizimlarini farqlay olasiz;
- bit, bayt va tranzistor tushunchalarini izohlay olasiz;
- kichik o'nlik sonlarni ikkilik ko'rinishga o'tkaza olasiz;
- bitlar soni bilan ifodalash mumkin bo'lgan qiymatlar soni orasidagi
  bog'lanishni tushuntira olasiz.

## Boshlashdan oldin

- **Zarur bilimlar:** oddiy qo'shish va 2 sonining darajalari haqida boshlang'ich
  tushuncha.
- **Kerakli dasturlar:** kerak emas.
- **Taxminiy vaqt:** 35–45 daqiqa.

## Asosiy terminlar

| Termin | Inglizcha nomi | Izoh |
| --- | --- | --- |
| Muammo yechish | Problem solving | Natijaga erishish yo'lini topish. |
| Kirish | Input | Jarayonga beriladigan boshlang'ich ma'lumot. |
| Qayta ishlash | Processing | Kirishni natijaga aylantiradigan amallar. |
| Chiqish | Output | Jarayon yakunida olingan natija. |
| Ikkilik tizim | Binary | Faqat `0` va `1` ishlatiladigan tizim. |
| Bit | Binary digit | Bitta `0` yoki `1` qiymati. |
| Bayt | Byte | Sakkiz bitdan tashkil topgan birlik. |
| Tranzistor | Transistor | Elektr signalini boshqaradigan kalit. |

## 1. Muammoni tizimli yechish

Dasturlashning markazida muammoni yechish (problem solving) turadi. Eng sodda
ko'rinishda har qanday hisoblash jarayonini uch qismga ajratish mumkin:

```text
kirish (input)  →  qayta ishlash (processing)  →  chiqish (output)
```

- **Kirish** — bizda avvaldan bor ma'lumot.
- **Qayta ishlash** — shu ma'lumot ustida bajariladigan qoidalar va amallar.
- **Chiqish** — olishni istagan natija.

Qayta ishlash qismi hozircha «qora quti»ga o'xshaydi:

```text
kirish  →  [ ?????????? ]  →  chiqish
```

Kurs davomida aynan shu qora qutining ichini to'ldirishni o'rganamiz. Ya'ni
kompyuter kirish ma'lumotini kerakli natijaga aylantirishi uchun aniq va
tartibli ko'rsatmalar tuzamiz.

### Hayotiy misol: davomatni hisoblash

Tasavvur qiling, o'qituvchi darsga nechta o'quvchi kelganini bilmoqchi.

- **Kirish:** sinfdagi o'quvchilar holati — kelgan yoki kelmagan.
- **Qayta ishlash:** kelgan har bir o'quvchini bir martadan sanash.
- **Chiqish:** qatnashgan o'quvchilarning umumiy soni.

Bu misolda sanash usuli qayta ishlash qismidir. Uni turli yo'llar bilan bajarish
mumkin. Masalan, har bir o'quvchi uchun bitta chiziq chizish yoki sonni raqamlar
bilan yozish mumkin.

## 2. Bir asosli sanoq tizimi

Sanashning eng sodda usullaridan biri bir asosli sanoq tizimi (unary yoki
base-1) hisoblanadi. Unda har bir dona uchun bittadan belgi qo'yiladi:

| Miqdor | Bir asosli yozuv |
| --- | --- |
| 1 | `●` |
| 2 | `●●` |
| 3 | `●●●` |
| 5 | `●●●●●` |

Bu usul kichik miqdorlar uchun tushunarli. Lekin 100 yoki 1 000 kabi katta
sonlarni yozish uchun juda ko'p belgi kerak bo'ladi. Demak, axborotni ixchamroq
ifodalash usuliga ehtiyoj bor.

## 3. Kompyuter nega ikkilik tizimdan foydalanadi?

Kundalik hayotda biz o'nlik sanoq tizimidan (decimal yoki base-10)
foydalanamiz. Unda o'nta raqam bor: `0` dan `9` gacha.

Kompyuterning elektron qismlarida esa ikki holatni ishonchli ajratish qulay:

- signal yo'q — `0`;
- signal bor — `1`.

Buni o'chiq va yoniq chiroqqa ham o'xshatish mumkin. Bitta chiroq faqat ikki
holatdan birida bo'ladi:

| Chiroq holati | Ikkilik qiymat |
| --- | ---: |
| O'chiq | `0` |
| Yoniq | `1` |

Kompyuter ichida chiroqlar emas, tranzistorlar (transistors) ishlaydi. Tranzistor
elektr signalini boshqaradigan juda kichik kalitga o'xshaydi. Zamonaviy
qurilmalarda juda ko'p tranzistor mavjud va ularning holatlari yordamida
ma'lumot ifodalanadi.

Faqat `0` va `1` dan foydalanadigan tizim ikkilik sanoq tizimi (binary yoki
base-2) deb ataladi. `Binary digit`, ya'ni «ikkilik raqam» iborasidan **bit**
atamasi kelib chiqqan.

## 4. Bitlarning o'rin qiymati

O'nlik sonlarda raqamning qiymati uning o'rniga bog'liq. Masalan, `572` sonida:

- `5` — yuzliklar xonasida;
- `7` — o'nliklar xonasida;
- `2` — birliklar xonasida.

O'ngdan chapga yurganda o'rin qiymatlari 10 baravar oshadi: `1`, `10`, `100` va
hokazo. Ikkilik tizimda esa har bir keyingi o'rin 2 baravar oshadi:

| Daraja | 2² | 2¹ | 2⁰ |
| --- | --- | --- | --- |
| O'rin qiymati | 4 | 2 | 1 |

Bit `1` bo'lsa, uning o'rin qiymatini qo'shamiz. Bit `0` bo'lsa, o'sha qiymatni
qo'shmaymiz.

Masalan, `101₂` ikkilik sonini o'nlikka o'tkazamiz:

```text
  1      0      1
  ↓      ↓      ↓
  4   +  0   +  1  = 5
```

Demak:

```text
101₂ = (1 × 4) + (0 × 2) + (1 × 1) = 5₁₀
```

Pastdagi kichik `₂` sonning ikkilik, `₁₀` esa o'nlik tizimda yozilganini
bildiradi.

## 5. Uch bit bilan sanash

Uchta bitning har biri `0` yoki `1` bo'lishi mumkin. Shuning uchun ular yordamida
sakkizta turli holatni ifodalaymiz:

| Ikkilik | Hisoblash | O'nlik |
| --- | --- | --- |
| `000` | 0 + 0 + 0 | 0 |
| `001` | 0 + 0 + 1 | 1 |
| `010` | 0 + 2 + 0 | 2 |
| `011` | 0 + 2 + 1 | 3 |
| `100` | 4 + 0 + 0 | 4 |
| `101` | 4 + 0 + 1 | 5 |
| `110` | 4 + 2 + 0 | 6 |
| `111` | 4 + 2 + 1 | 7 |

Bu yerda muhim farq bor:

- uch bit bilan **8 ta turli qiymat** yozish mumkin;
- eng katta qiymat esa **7** bo'ladi, chunki sanash `0` dan boshlanadi.

Umumiy qoida quyidagicha:

```text
n ta bit → 2ⁿ ta turli qiymat → 0 dan 2ⁿ − 1 gacha
```

Masalan, to'rtta bit `2⁴ = 16` ta qiymatni, ya'ni `0` dan `15` gacha bo'lgan
sonlarni ifodalaydi.

## 6. Bitdan baytga

Kompyuter xotirasida bitlar odatda guruh bo'lib ishlatiladi. Sakkiz bitdan
iborat guruh **bayt** (byte) deyiladi.

Sakkiz bitning o'rin qiymatlari:

| 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | 0 | 0 | 0 | 0 | 1 | 0 | 1 |

Jadvaldagi `00000101₂` sonida `4` va `1` o'rinlari yoqilgan:

```text
00000101₂ = 4 + 1 = 5₁₀
```

Sakkiz bit `2⁸ = 256` ta turli holatni ifodalaydi. Agar faqat manfiy bo'lmagan
sonlarni saqlasak, bir bayt bilan `0` dan `255` gacha yozish mumkin:

```text
00000000₂ = 0₁₀
11111111₂ = 255₁₀
```

Nega eng katta son 256 emas? Chunki 256 ta qiymat ichida `0` ham bor. Shuning
uchun oxirgi qiymat `255` bo'ladi.

Keyingi bo'limlarda xuddi shu `0` va `1` lar yordamida harflar, ranglar,
tasvirlar, audio va videolar qanday ifodalanishini ko'ramiz. Bitlarning o'zi
faqat holatlarni bildiradi; ularga qanday ma'no berilishi qo'llanilayotgan qoida
yoki standartga bog'liq.

## Ko'p uchraydigan xatolar

- **Xato:** `10₂` ni o'n deb o'qish.
  **Sabab va yechim:** ikkilik `10₂` soni `(1 × 2) + (0 × 1) = 2₁₀` ga teng.

- **Xato:** sakkiz bitda faqat sakkizta qiymat bor deb o'ylash.
  **Sabab va yechim:** har bir bitning ikki holati bor, shuning uchun sakkiz bit
  `2⁸ = 256` ta turli holat yaratadi.

- **Xato:** bit va baytni bir xil tushuncha deb hisoblash.
  **Sabab va yechim:** bit bitta `0` yoki `1`; bayt esa sakkizta bitdan iborat.

- **Xato:** uch bitning eng katta qiymati 8 deb hisoblash.
  **Sabab va yechim:** uch bitda sakkizta qiymat bor, ammo ular `0` dan `7`
  gacha sanaladi.

## Amaliy mashqlar

### 1-mashq — Ikkilik sonni o'qish

Quyidagi ikkilik sonlarni o'nlik sanoq tizimiga o'tkazing:

1. `001₂`
2. `011₂`
3. `100₂`
4. `110₂`
5. `111₂`

Har bir javobda qaysi o'rin qiymatlarini qo'shganingizni ham yozing.

### 2-mashq — Sonni bitlar bilan yozish

Quyidagi o'nlik sonlarni to'rt bitli ikkilik son ko'rinishida yozing:

1. `2₁₀`
2. `5₁₀`
3. `9₁₀`
4. `12₁₀`
5. `15₁₀`

Masalan, javob ikki bo'lsa, uni `0010₂` shaklida yozing.

### 3-mashq — Nechta bit kerak?

Maktabdagi 100 nafar o'quvchiga takrorlanmaydigan raqam berish kerak. Eng kamida
nechta bit talab qilinishini toping. Javobingizni `2ⁿ` qoidasidan foydalanib
asoslang.

## Mini-loyiha — Ikkilik chiroqlar hisoblagichi

- **Vazifa:** to'rtta qog'oz chiroq yordamida `0` dan `15` gacha sanaydigan
  model yarating.
- **Talablar:** har bir chiroqqa `8`, `4`, `2`, `1` o'rin qiymatlaridan birini
  yozing; o'chiq holatni `0`, yoniq holatni `1` bilan belgilang; barcha 16 ta
  holatni jadvalga kiriting.
- **Qabul mezonlari:** jadvalda `0000₂` dan `1111₂` gacha bo'lgan holatlar
  takrorlanmasdan va to'g'ri tartibda ko'rsatilgan bo'lishi kerak.

## O'zingizni tekshiring

1. Muammoni yechish modelidagi kirish, qayta ishlash va chiqish nima?
2. Nega elektron qurilmalarda ikkilik sanoq tizimidan foydalanish qulay?
3. `101₂` soni o'nlik tizimda nechaga teng?
4. Uch bit nechta turli qiymatni ifodalaydi va eng katta qiymat nechaga teng?
5. Bit bilan baytning farqi nimada?
6. Nega bir baytning eng katta manfiy bo'lmagan qiymati `255` bo'ladi?

## Dars xulosasi

- Muammoni kirish, qayta ishlash va chiqish qismlariga ajratish uni aniqroq
  tushunishga yordam beradi.
- Kompyuter ikki barqaror elektron holatni `0` va `1` yordamida ifodalaydi.
- Bitta bit ikki holatni, `n` ta bit esa `2ⁿ` ta holatni ifodalaydi.
- Ikkilik sonning o'rin qiymatlari o'ngdan chapga `1`, `2`, `4`, `8` tarzida
  ikki baravar oshib boradi.
- Sakkiz bit bir baytni tashkil qiladi; bir bayt 256 ta turli holatni ifodalaydi.
- Axborotni to'g'ri ifodalash muammoni kompyuter yordamida yechishning birinchi
  qadamlaridan biridir.

## Foydalanilgan manba

- [CS50x 2026, Lecture 0 — Computer Science and Problem Solving](https://cs50.harvard.edu/x/notes/0/#computer-science-and-problem-solving)
  — muammoni kirish va chiqish orqali ifodalash, ikkilik sanoq, bit va bayt.
