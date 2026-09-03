# Unicode: dunyo yozuvlarini ifodalash

> **Holat:** tayyor

## Dars haqida

ASCII ingliz alifbosining asosiy harflari, raqamlar va ayrim belgilarni
ifodalash uchun yetarli. Ammo odamlar yuzlab tillarda yozadi. O'zbekcha maxsus
belgilar, kirill yozuvi, arab va xitoy yozuvlari hamda emojilarni ASCII dagi
128 ta kodga sig'dirib bo'lmaydi.

Unicode bu muammoni hal qilish uchun yaratilgan xalqaro standartdir. Uning
maqsadi — qaysi qurilma, dastur yoki tildan foydalanilishidan qat'i nazar, har
bir matn belgisiga umumiy raqam berish.

Bu darsda Unicode kod nuqtasi, UTF-8 kodlash usuli va emojilarning turli
qurilmalarda nega biroz boshqacha ko'rinishi bilan tanishamiz.

## O'quv maqsadlari

Bu darsni tugatgach, siz:

- ASCII nega barcha tillar uchun yetarli emasligini tushuntira olasiz;
- Unicode va kod nuqtasi tushunchalarini izohlay olasiz;
- Unicode bilan UTF-8 orasidagi farqni tushuntira olasiz;
- UTF-8 da bitta belgi bir yoki bir necha bayt egallashini anglaysiz;
- belgi va uning ekrandagi ko'rinishi orasidagi farqni bilasiz;
- noto'g'ri kodlash sababli buzilgan matnni taniy olasiz.

## Boshlashdan oldin

- **Zarur bilimlar:** bit, bayt, ASCII, kodlash va dekodlash.
- **Kerakli dasturlar:** shart emas.
- **Taxminiy vaqt:** 35–45 daqiqa.

## Asosiy terminlar

| Termin | Inglizcha nomi | Izoh |
| --- | --- | --- |
| Unicode | Unicode | Dunyo yozuvlari uchun belgilar standarti. |
| Kod nuqtasi | Code point | Belgiga berilgan yagona raqam. |
| Kodlash usuli | Encoding form | Kod nuqtasini baytlarga aylantirish qoidasi. |
| UTF-8 | UTF-8 | Unicode matnini baytlarda saqlash usuli. |
| Glif | Glyph | Belgining ekrandagi yoki qog'ozdagi shakli. |
| Shrift | Font | Gliflarning tashqi ko'rinishini belgilovchi to'plam. |

## 1. Nega yana bir standart kerak?

ASCII standartida faqat 128 ta kod mavjud. Bunga katta va kichik ingliz
harflari, raqamlar, tinish belgilari hamda nazorat belgilari kiradi. Quyidagi
belgilar esa ASCII tarkibida yo'q:

```text
ў  қ  ғ  ҳ  ش  中  é  ñ  oʻ  😀
```

Unicode yaratilishidan oldin turli tillar uchun ko'plab alohida kodlash
jadvallari ishlatilgan. Bir jadvaldagi ma'lum bir son boshqa jadvalda butunlay
boshqa belgini anglatishi mumkin edi. Matn bir tizimdan boshqasiga o'tganda
noto'g'ri belgilar paydo bo'lish xavfi mavjud edi.

Unicode umumiy kelishuv beradi:

```text
har bir belgi  →  yagona raqam
```

Bu kelishuv matnni turli operatsion tizim, telefon, brauzer va dasturlar orasida
almashishga yordam beradi.

## 2. Kod nuqtasi nima?

Unicode har bir belgiga kod nuqtasi (code point), ya'ni yagona raqam beradi.
Kod nuqtasi odatda `U+` belgisi va o'n oltilik raqam bilan yoziladi.

O'n oltilik sanoq tizimi (hexadecimal) `0`–`9` raqamlari bilan birga `A`–`F`
harflaridan ham foydalanadi. Hozir bu sonlarni hisoblash shart emas. `U+0041`
yozuvini Unicode katalogidagi manzil deb tushunishning o'zi yetarli.

| Belgi | Kod nuqtasi | Ma'nosi |
| --- | --- | --- |
| `A` | `U+0041` | Katta lotincha A. |
| `a` | `U+0061` | Kichik lotincha a. |
| `ʻ` | `U+02BB` | O'girib yozilgan vergul belgisi. |
| `ў` | `U+045E` | Kichik kirillcha qisqa U. |
| `😀` | `U+1F600` | Kulayotgan yuz emojisi. |

Masalan, `U+0041` har doim `A` belgisini bildiradi. Qurilma yoki dastur
o'zgarsa ham kod nuqtasining ma'nosi o'zgarmaydi.

### O'zbekcha `oʻ` misoli

O'zbek lotin yozuvidagi `oʻ` ko'rinishda bitta harfdek qabul qilinadi. Ammo
kompyuterda u ko'pincha ikkita Unicode kod nuqtasidan tuziladi:

```text
o   → U+006F
ʻ   → U+02BB
oʻ  → U+006F U+02BB
```

Klaviaturada tez-tez yoziladigan oddiy `'` apostrofi esa boshqa belgi:

```text
'   → U+0027
ʻ   → U+02BB
```

`o'` va `oʻ` bir-biriga o'xshasa ham, ularning kodlari bir xil emas. Shu sababli
qidiruv, saralash yoki matnni taqqoslashda farq paydo bo'lishi mumkin.

## 3. Unicode va UTF-8 bir xil emas

Unicode belgiga **qaysi raqam** berilishini belgilaydi. Lekin shu raqamni fayl
yoki xotirada baytlar ko'rinishida qanday saqlash kerakligini alohida kodlash
usuli belgilaydi.

Buni kitob katalogiga o'xshatish mumkin:

- Unicode kod nuqtasi — kitobning katalog raqami;
- UTF-8 — shu raqamni jo'natish yoki saqlash usuli.

Unicode uchun bir nechta kodlash usuli bor. Ularning keng tarqalganlari:

- UTF-8;
- UTF-16;
- UTF-32.

Ularning barchasi Unicode belgilarini ifodalay oladi, ammo baytlarni joylashtirish
qoidalari farq qiladi. Ushbu darsda internet va matn fayllarida keng qo'llanadigan
UTF-8 ga e'tibor qaratamiz.

## 4. UTF-8 qanday ishlaydi?

UTF qisqartmasi *Unicode Transformation Format* degan ma'noni anglatadi. UTF-8
Unicode kod nuqtalarini sakkiz bitli birliklar, ya'ni baytlar ketma-ketligiga
aylantiradi.

UTF-8 o'zgaruvchan uzunlikdagi kodlash usulidir:

- ASCII tarkibidagi belgi 1 bayt egallaydi;
- boshqa belgilar 2, 3 yoki 4 bayt egallashi mumkin.

Quyidagi jadvalda baytlar o'n oltilik ko'rinishda berilgan:

| Belgi | Kod nuqtasi | Bayt | UTF-8 baytlari |
| --- | --- | --- | --- |
| `A` | `U+0041` | 1 | `41` |
| `é` | `U+00E9` | 2 | `C3 A9` |
| `ʻ` | `U+02BB` | 2 | `CA BB` |
| `😀` | `U+1F600` | 4 | `F0 9F 98 80` |

Bu jadvaldan ikkita muhim xulosa chiqadi:

1. Har bir ko'rinadigan belgi aynan bir bayt egallamaydi.
2. Kod nuqtasi bilan uni saqlaydigan baytlar bir xil tushuncha emas.

Masalan, `😀` uchun Unicode katalogidagi raqam `U+1F600`, UTF-8 dagi xotira
ko'rinishi esa to'rtta baytdan iborat: `F0 9F 98 80`.

## 5. UTF-8 ASCII bilan qanday ishlaydi?

UTF-8 ASCII bilan mos ishlash uchun loyihalangan. ASCII dagi `0`–`127` kodlari
UTF-8 da ham aynan bir bayt va o'sha qiymat bilan saqlanadi.

Masalan:

```text
A
ASCII kodi: 65
UTF-8 bayti: 65₁₀ = 41₁₆ = 01000001₂
```

Shuning uchun faqat oddiy ingliz harflaridan tuzilgan eski ASCII matni ham
to'g'ri UTF-8 matni hisoblanadi. Qo'shimcha tillar yoki emoji kerak bo'lganda
UTF-8 bir belgini ifodalash uchun ko'proq baytdan foydalanadi.

Quyidagi ikki xabar ko'rinishda bir xil uzunlikda emas, xotirada esa farq yanada
aniq bo'lishi mumkin:

```text
Hi!   → har bir belgi 1 baytdan
Hi! 😀 → emoji 4 bayt egallaydi
```

Demak, matndagi belgilar sonini sanash bilan uning baytlar sonini sanash har
doim bir xil natija bermaydi.

## 6. Belgi va uning ko'rinishi

Unicode belgining ma'nosi va kod nuqtasini standartlashtiradi, ammo uning aniq
rasmini belgilab bermaydi. Belgining ekrandagi shakli glif (glyph) deyiladi.
Glifning qanday chizilishi shrift (font), dastur va qurilmaga bog'liq.

Masalan, `😀` kodi barcha mos tizimlarda `U+1F600`. Lekin uning rangi, ko'zlari
yoki og'iz shakli telefon ishlab chiqaruvchisi va ishlatilgan shriftga qarab
biroz farq qilishi mumkin. Kod bir xil, tasvir esa aynan bir xil bo'lishi shart
emas.

Agar qurilmadagi shrift ma'lum belgini chiza olmasa, uning o'rnida bo'sh
to'rtburchak yoki savol belgisi ko'rinishi mumkin. Bu Unicode kod nuqtasi yo'q
degani emas; qurilma uning glifiga ega emasligini anglatishi mumkin.

Unicode standarti rivojlanishda davom etadi. Yangi yozuvlar, maxsus belgilar va
emojilar qo'shiladi. Eski qurilma juda yangi belgini taniy olmasligi ham mumkin.

## 7. Bitta ko'rinadigan belgi murakkab bo'lishi mumkin

Boshlanishida «har bir belgi uchun bitta kod nuqtasi» deb fikrlash qulay. Amalda
esa bitta ko'rinadigan belgi bir nechta kod nuqtasidan tuzilishi mumkin.

Biz ko'rgan `oʻ` bunga sodda misol:

```text
oʻ = o + ʻ = U+006F U+02BB
```

Ayrim urg'uli harflar ham ikki xil yo'l bilan ifodalanishi mumkin. Masalan,
`é` tayyor bitta kod nuqtasi yoki `e` bilan alohida urg'u belgisining
birikmasidan tashkil topishi mumkin. Murakkab emojilar ham bir nechta kod
nuqtasining ketma-ketligi bo'lishi mumkin.

Shuning uchun dasturlashda «belgilar soni», «kod nuqtalari soni» va «baytlar
soni» doimo bir xil tushuncha emas.

## 8. Kodlash noto'g'ri tanlansa nima bo'ladi?

Matn UTF-8 da saqlanib, dastur uni boshqa kodlash usulida o'qisa, ekranda
tushunarsiz belgilar paydo bo'lishi mumkin. Bunday buzilgan matn ko'pincha
*mojibake* deb ataladi.

Jarayonni quyidagicha tasavvur qiling:

```text
Unicode matni
    ↓ UTF-8 bilan kodlash
baytlar
    ↓ boshqa qoida bilan noto'g'ri dekodlash
buzilgan matn
```

Muammo asl matnda emas, kodlash va dekodlash qoidalari bir-biriga mos
kelmaganida. Shu sababli matn fayli, veb-sahifa yoki ma'lumotlar bazasida qaysi
kodlash ishlatilayotganini to'g'ri ko'rsatish muhim.

## Ko'p uchraydigan xatolar

- **Xato:** Unicode va UTF-8 aynan bir narsa deb o'ylash.
  **Sabab va yechim:** Unicode belgilar va kod nuqtalarini belgilaydi; UTF-8 esa
  ularni baytlar ko'rinishida saqlaydi.

- **Xato:** har bir belgi bir bayt egallaydi deb hisoblash.
  **Sabab va yechim:** UTF-8 da belgi 1 dan 4 baytgacha egallashi mumkin.

- **Xato:** emoji turli telefonda boshqacha ko'rinsa, uning kodi ham boshqa deb
  o'ylash.
  **Sabab va yechim:** kod nuqtasi bir xil bo'lishi mumkin, glifni esa qurilma
  yoki shrift chizadi.

- **Xato:** ko'rinishda o'xshash belgilar kompyuter uchun ham bir xil deb
  hisoblash.
  **Sabab va yechim:** oddiy `'` belgisi `U+0027`, o'zbekcha `ʻ` esa `U+02BB`.

- **Xato:** matn buzilsa, ma'lumot butunlay yo'qolgan deb xulosa qilish.
  **Sabab va yechim:** ba'zan baytlar to'g'ri bo'ladi, faqat noto'g'ri kodlash
  usuli bilan o'qilgan bo'ladi.

## Amaliy mashqlar

### 1-mashq — ASCII yetarlimi?

Quyidagi belgilar uchun ASCII yetarlimi yoki Unicode kerakmi, aniqlang:

```text
A   !   7   ў   oʻ   é   中   😀
```

Har bir javobingizni qisqa izohlang.

### 2-mashq — Kod nuqtalarini o'qing

Quyidagi jadvalga qarab kod nuqtalarini belgilar bilan almashtiring:

| Kod nuqtasi | Belgi |
| --- | --- |
| `U+0041` | ... |
| `U+0061` | ... |
| `U+02BB` | ... |
| `U+045E` | ... |
| `U+1F600` | ... |

Kerakli ma'lumotlarni dars boshidagi jadvaldan topishingiz mumkin.

### 3-mashq — Kod nuqtasi va baytni farqlang

Quyidagi gaplardagi bo'sh joylarni to'ldiring:

1. `😀` belgisining Unicode kod nuqtasi — `________`.
2. `😀` belgisining UTF-8 baytlari — `________`.
3. `A` belgisi UTF-8 da `________` bayt egallaydi.
4. `é` belgisi UTF-8 da `________` bayt egallaydi.

### 4-mashq — O'xshash belgilarni tekshiring

Quyidagi ikki yozuvni diqqat bilan taqqoslang:

```text
O'zbekiston
Oʻzbekiston
```

Ular ko'rinishda qanchalik o'xshash? Apostrof vazifasidagi belgilar qaysi kod
nuqtalariga ega? Nega qidiruv tizimi ularni ba'zan ikki xil matn deb qabul
qilishi mumkinligini tushuntiring.

## Mini-loyiha — Ko'p tilli xabar pasporti

- **Vazifa:** lotin yozuvi, ASCII tarkibida bo'lmagan kamida bitta harf va bitta
  emojidan iborat qisqa xabar tuzing.
- **Tahlil:** xabardagi har bir belgini jadvalga yozing; uning kod nuqtasi,
  ASCII tarkibida bor-yo'qligi va UTF-8 dagi baytlar sonini aniqlang.
- **Sinov:** xabarni ikki xil dastur yoki qurilmada ochib, belgilar ko'rinishini
  solishtiring.
- **Qabul mezonlari:** kamida beshta belgi tahlil qilinishi, kod nuqtalari
  `U+...` shaklida yozilishi va emoji ko'rinishidagi farq izohlanishi kerak.

## O'zingizni tekshiring

1. ASCII nega dunyodagi barcha yozuvlarni ifodalash uchun yetarli emas?
2. Unicode kod nuqtasi nima va u qanday yoziladi?
3. Unicode bilan UTF-8 orasidagi farq nimada?
4. Nega `A` UTF-8 da bir bayt, `😀` esa to'rt bayt egallaydi?
5. Bir xil emoji nega turli qurilmalarda biroz boshqacha ko'rinishi mumkin?
6. `o'` va `oʻ` yozuvlari kompyuter uchun nega bir xil bo'lmasligi mumkin?
7. Kodlash va dekodlash usullari mos kelmasa, qanday muammo yuz beradi?

## Dars xulosasi

- Unicode turli tillardagi harflar, belgilar va emojilarga umumiy kod
  nuqtalarini beradi.
- Kod nuqtasi `U+...` shaklida yoziladi va belgining yagona raqamini bildiradi.
- UTF-8 Unicode kod nuqtalarini bir baytdan to'rt baytgacha bo'lgan ketma-ketlik
  yordamida saqlaydi.
- ASCII belgilari UTF-8 da o'zining avvalgi bir baytli qiymatini saqlab qoladi.
- Unicode belgining ma'nosini belgilaydi; uning aniq ko'rinishini shrift va
  qurilma belgilaydi.
- Bitta ko'rinadigan belgi bir nechta kod nuqtasi yoki baytdan iborat bo'lishi
  mumkin.
- Matnni to'g'ri ko'rsatish uchun kodlash va dekodlash usullari mos bo'lishi
  kerak.

## Foydalanilgan manbalar

- [CS50x 2026, Lecture 0 — Unicode](https://cs50.harvard.edu/x/notes/0/#unicode)
  — Unicode yordamida turli belgilar va emojilarni ifodalash.
- [Unicode Consortium — What is Unicode?](https://www.unicode.org/standard/WhatIsUnicode.html)
  — Unicode standartining maqsadi va belgilar uchun yagona raqamlar.
- [Unicode Consortium — UTF FAQ](https://www.unicode.org/faq/utf_bom.html)
  — UTF-8, UTF-16 va UTF-32 kodlash usullari haqida ma'lumot.
