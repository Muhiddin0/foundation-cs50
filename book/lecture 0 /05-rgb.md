# RGB: ranglarni sonlar orqali ifodalash

> **Holat:** tayyor

## Dars haqida

Kompyuter sonlarni bitlar, matnni esa ASCII yoki Unicode kodlari yordamida
ifodalaydi. Raqamli tasvirlar ham oxir-oqibat sonlardan tashkil topadi. Ekrandagi
har bir kichik nuqtaning rangi qizil, yashil va ko'k yorug'lik miqdorlari orqali
yozilishi mumkin.

Bu usul RGB rang modeli deb ataladi. RGB nomi inglizcha *red*, *green* va *blue*,
ya'ni qizil, yashil va ko'k so'zlarining bosh harflaridan olingan.

Ushbu darsda RGB kanallari, piksel, tasvir o'lchami va bir xil baytlar turli
ma'noda talqin qilinishi mumkinligini o'rganamiz.

## O'quv maqsadlari

Bu darsni tugatgach, siz:

- RGB rang modelining uchta kanalini tushuntira olasiz;
- kanal qiymatlari yordamida asosiy ranglarni hosil qila olasiz;
- piksel va tasvir o'lchami tushunchalarini farqlay olasiz;
- oddiy RGB tasvirining xotira hajmini hisoblay olasiz;
- bir xil baytlar matn yoki rang sifatida talqin qilinishini tushuntira olasiz;
- tasvir, video va audio bitlarda qanday ifodalanishini umumiy tasvirlay olasiz.

## Boshlashdan oldin

- **Zarur bilimlar:** bit, bayt, ikkilik sanoq tizimi va ASCII.
- **Kerakli dasturlar:** shart emas.
- **Taxminiy vaqt:** 35–45 daqiqa.

## Asosiy terminlar

| Termin | Inglizcha nomi | Izoh |
| --- | --- | --- |
| RGB | RGB | Qizil, yashil va ko'kdan rang hosil qilish modeli. |
| Rang kanali | Color channel | Bitta asosiy rangning miqdori. |
| Piksel | Pixel | Raqamli tasvirning eng kichik rangli nuqtasi. |
| Rastr tasvir | Raster image | Piksellar katagidan tashkil topgan tasvir. |
| O'lcham | Dimensions | Tasvirning eni va bo'yi, piksellarda. |
| Kadr | Frame | Videoni tashkil qiluvchi alohida tasvir. |
| Siqish | Compression | Ma'lumot hajmini kamaytirish usuli. |

## 1. RGB rang modeli

Ekran ranglarni yorug'lik yordamida ko'rsatadi. Har bir piksel ichida uchta rang
kanali (color channel) mavjud:

- `R` — qizil (*red*);
- `G` — yashil (*green*);
- `B` — ko'k (*blue*).

Rang odatda uchta son bilan yoziladi:

```text
RGB(qizil, yashil, ko'k)
```

Masalan:

```text
RGB(255, 0, 0)
```

Bu yozuvda qizil kanal eng yuqori, yashil va ko'k kanallar esa eng past
qiymatda. Natijada sof qizil rang hosil bo'ladi.

## 2. Kanal qiymatlari

Oddiy RGB tasvirlarda har bir kanal uchun sakkiz bit, ya'ni bir bayt ajratiladi.
Sakkiz bit `0` dan `255` gacha bo'lgan qiymatlarni ifodalaydi.

- `0` — shu rangdan yorug'lik qo'shilmaydi;
- `255` — shu rang eng yuqori kuchda qo'shiladi;
- oraliq sonlar — rangning qisman qo'shilishini bildiradi.

| Rang | R | G | B | RGB yozuvi |
| --- | --- | --- | --- | --- |
| Qora | 0 | 0 | 0 | `RGB(0, 0, 0)` |
| Oq | 255 | 255 | 255 | `RGB(255, 255, 255)` |
| Qizil | 255 | 0 | 0 | `RGB(255, 0, 0)` |
| Yashil | 0 | 255 | 0 | `RGB(0, 255, 0)` |
| Ko'k | 0 | 0 | 255 | `RGB(0, 0, 255)` |
| Sariq | 255 | 255 | 0 | `RGB(255, 255, 0)` |
| Havorang (cyan) | 0 | 255 | 255 | `RGB(0, 255, 255)` |
| Qirmizi (magenta) | 255 | 0 | 255 | `RGB(255, 0, 255)` |

Uchala kanal `0` bo'lsa, yorug'lik chiqmaydi va qora rang ko'rinadi. Uchala kanal
`255` bo'lsa, qizil, yashil va ko'k yorug'lik qo'shilib oq rang hosil qiladi.

### Yorug'lik va bo'yoq bir xil aralashmaydi

RGB qo'shuvchi rang modeli (additive color model) hisoblanadi. Unda yorug'lik
qo'shilgani sari rang oq rangga yaqinlashadi. Masalan, qizil va yashil yorug'lik
birgalikda sariq rang beradi.

Bo'yoqlar esa boshqacha aralashadi. Bir nechta bo'yoq qo'shilganda ular ko'proq
yorug'likni yutadi va rang odatda qorayadi. Shuning uchun ekrandagi RGB
aralashuvini bo'yoq aralashtirish qoidasi bilan adashtirmaslik kerak.

## 3. Kulrang va yorqinlik

Qizil, yashil va ko'k kanallarga aynan bir xil qiymat berilsa, kulrang tus hosil
bo'ladi:

| RGB qiymati | Natija |
| --- | --- |
| `RGB(0, 0, 0)` | Qora. |
| `RGB(64, 64, 64)` | To'q kulrang. |
| `RGB(128, 128, 128)` | O'rta kulrang. |
| `RGB(192, 192, 192)` | Och kulrang. |
| `RGB(255, 255, 255)` | Oq. |

Qiymatlar birga oshgani sari piksel yorqinroq ko'rinadi. Rangli tus hosil qilish
uchun esa kanallarning qiymatlari bir-biridan farq qilishi kerak.

## 4. Bir xil sonlar, boshqa ma'no

ASCII darsida quyidagi uchta sonni ko'rgan edik:

```text
72 73 33
```

ASCII jadvali bo'yicha ular uchta belgini bildiradi:

```text
72 → H
73 → I
33 → !

Natija: HI!
```

RGB qoidasi bo'yicha esa ayni sonlar bitta pikselning rang kanallaridir:

```text
R = 72
G = 73
B = 33

Natija: RGB(72, 73, 33)
```

Bu qiymatlar to'q zaytun tusiga yaqin rang hosil qiladi. Sonlar o'zgarmadi, ammo
ularni talqin qilish qoidasi o'zgardi:

| Talqin | `72 73 33` nimani bildiradi? |
| --- | --- |
| ASCII | Uchta belgi: `HI!`. |
| RGB | Bitta pikselning uchta rang kanali. |

Demak, baytlarning o'zi «matn» yoki «rang» degan yorliqqa ega emas. Dastur fayl
turi, format va boshqa ma'lumotlar orqali ularni qanday talqin qilishni biladi.

## 5. Piksel nima?

Piksel (pixel) — rastr tasvirning eng kichik rangli nuqtasi. Ekrandagi rasmni
juda kattalashtirsangiz, u mayda kvadratlarga o'xshash piksellardan tuzilganini
ko'rishingiz mumkin.

Oddiy 24-bitli RGB modelida bitta piksel uch baytdan iborat:

```text
qizil kanal   = 1 bayt = 8 bit
yashil kanal  = 1 bayt = 8 bit
ko'k kanal    = 1 bayt = 8 bit
--------------------------------
bitta piksel  = 3 bayt = 24 bit
```

Har bir kanal 256 ta qiymatga ega. Uch kanalning barcha birikmalari soni:

```text
256 × 256 × 256 = 16 777 216 ta rang
```

Bu hisob odatiy sakkiz bitli RGB modeliga tegishli. Professional tasvirlarda har
bir kanal uchun ko'proq bit ishlatilishi ham mumkin.

## 6. Tasvir — piksellar katagi

Rastr tasvir (raster image) qator va ustunlarga joylashtirilgan piksellar
to'plamidir. Masalan, juda kichik tasvirni ranglarning bosh harflari bilan
quyidagicha tasavvur qilish mumkin:

```text
Q  Q  O  O
Q  S  S  O
K  S  S  Y
K  K  Y  Y
```

Bu yerda, masalan:

- `Q` — qizil;
- `O` — oq;
- `S` — sariq;
- `K` — ko'k;
- `Y` — yashil.

Haqiqiy faylda harflar emas, har bir katak uchun RGB qiymatlari saqlanadi.
Dastur ularni o'qib, piksellarni kerakli rangda ko'rsatadi.

Tasvir o'lchami (dimensions) uning eni va bo'yidagi piksellar soni bilan
ifodalanadi:

```text
eni × bo'yi
```

Masalan, `100 × 100` o'lchamli tasvirda:

```text
100 × 100 = 10 000 ta piksel
```

Har bir piksel uch bayt egallasa, siqilmagan rang ma'lumotining hajmi:

```text
10 000 × 3 = 30 000 bayt
```

Haqiqiy rasm faylida sarlavha, rang profili va boshqa yordamchi ma'lumotlar ham
bo'lishi mumkin. PNG yoki JPEG kabi formatlar ma'lumotni siqishi sababli fayl
hajmi oddiy hisobdan kichik yoki boshqa miqdorda chiqishi mumkin.

## 7. Shaffoflik va RGBA

Ba'zi tasvirlarda pikselning rangidan tashqari uning shaffofligi ham saqlanadi.
Buning uchun alfa kanali (alpha channel) qo'shiladi va model RGBA deb ataladi:

```text
RGBA(qizil, yashil, ko'k, alfa)
```

Alfa ham bir bayt bilan saqlanadigan modelda:

- `0` — to'liq shaffof;
- `255` — to'liq ko'rinadigan;
- oraliq qiymat — qisman shaffof.

Masalan, `RGBA(255, 0, 0, 128)` qisman shaffof qizil pikselni bildirishi mumkin.
Bunday modelda bir piksel uch emas, to'rt bayt egallaydi.

## 8. Tasvirdan videoga

Video ketma-ket ko'rsatiladigan ko'plab tasvirlardan tashkil topadi. Har bir
alohida tasvir kadr (frame) deyiladi. Kadrlar tez almashganda ko'zimiz ularni
harakat sifatida qabul qiladi. Bu varaqlari tez aylantiriladigan rasmlar
daftariga o'xshaydi.

Masalan, video bir soniyada 30 ta kadr ko'rsatsa, bir daqiqada:

```text
30 × 60 = 1 800 ta kadr
```

Har bir kadr juda ko'p pikselga ega bo'lishi mumkin. Shu sababli video katta
hajm egallaydi va odatda maxsus usullar yordamida siqiladi.

Audio RGB orqali ifodalanmaydi, ammo u ham sonlar va bitlar yordamida saqlanadi.
Ovoz ma'lum vaqt oralig'ida o'lchanadi va bu o'lchovlar ketma-ketligi raqamlar
ko'rinishida yoziladi. Demak, matn, rasm, video va ovoz turli qoidalardan
foydalansa ham, kompyuter xotirasida barchasi bitlarga aylanadi.

## Ko'p uchraydigan xatolar

- **Xato:** `RGB(0, 0, 0)` rang yo'qligini bildiradi deb o'ylash.
  **Sabab va yechim:** uchala kanal nol bo'lganda ekran yorug'lik chiqarmaydi va
  natijada qora rang ko'rinadi.

- **Xato:** `RGB(255, 0, 0)` uchta alohida piksel deb hisoblash.
  **Sabab va yechim:** uchta son bitta pikselning qizil, yashil va ko'k
  kanallarini bildiradi.

- **Xato:** RGB ranglari bo'yoq kabi aralashadi deb o'ylash.
  **Sabab va yechim:** RGB yorug'likka asoslangan qo'shuvchi model; barcha
  kanallar maksimum bo'lsa, oq rang hosil bo'ladi.

- **Xato:** har bir rasm fayli aynan `eni × bo'yi × 3` bayt bo'ladi deb o'ylash.
  **Sabab va yechim:** bu siqilmagan RGB ma'lumotining soddalashtirilgan hisobi.
  Fayl formati, siqish va qo'shimcha ma'lumotlar yakuniy hajmni o'zgartiradi.

- **Xato:** bir xil baytlar har doim bir xil ma'noni bildiradi deb hisoblash.
  **Sabab va yechim:** ma'no ularni o'qiyotgan format va dasturga bog'liq.

## Amaliy mashqlar

### 1-mashq — Rangni aniqlang

Quyidagi RGB qiymatlari qaysi rangni ifodalashini toping:

1. `RGB(0, 0, 0)`
2. `RGB(255, 255, 255)`
3. `RGB(255, 255, 0)`
4. `RGB(0, 0, 255)`
5. `RGB(128, 128, 128)`

### 2-mashq — Rang aralashtiring

Bo'sh joylarni kerakli kanal qiymatlari bilan to'ldiring:

```text
qizil    = RGB(..., 0, 0)
yashil   = RGB(0, ..., 0)
havorang = RGB(0, ..., ...)
oq       = RGB(..., ..., ...)
```

Har bir qiymat nima sababdan `0` yoki `255` bo'lishini tushuntiring.

### 3-mashq — Ikki xil talqin

`72 73 33` sonlarini avval ASCII, keyin RGB qoidasi bo'yicha talqin qiling.
Nega birinchi holatda uchta belgi, ikkinchisida esa bitta piksel hosil bo'lishini
izohlang.

### 4-mashq — Tasvir hajmini hisoblang

`200 × 100` o'lchamli siqilmagan RGB tasvir bor. Har bir piksel uch bayt
egallaydi.

1. Tasvirda nechta piksel bor?
2. Rang ma'lumotlari jami necha bayt egallaydi?
3. Agar alfa kanali qo'shilsa, jami necha bayt kerak bo'ladi?

### 5-mashq — Piksel katagini o'qing

Quyidagi `2 × 2` tasvir qaysi ranglardan tuzilganini aniqlang:

```text
RGB(255, 0, 0)      RGB(0, 255, 0)
RGB(0, 0, 255)      RGB(255, 255, 255)
```

Javobni yuqori chap, yuqori o'ng, pastki chap va pastki o'ng tartibida yozing.

## Mini-loyiha — 8 × 8 piksel-art

- **Vazifa:** `8 × 8` katakda sodda belgi, yuz yoki naqsh chizing.
- **Ranglar:** ko'pi bilan beshta rang tanlang va har biriga RGB qiymati bering.
- **Kodlash:** kataklardagi ranglarni bitta harf bilan belgilang va ranglar
  lug'atini tuzing.
- **Hisoblash:** tasvir siqilmagan 24-bitli RGB bo'lsa, rang ma'lumotlari necha
  bayt egallashini aniqlang.
- **Qabul mezonlari:** 64 ta katak to'ldirilishi, ranglar lug'atida har bir
  harfning RGB qiymati ko'rsatilishi va xotira hisobi to'g'ri bo'lishi kerak.

## O'zingizni tekshiring

1. RGB qisqartmasidagi har bir harf nimani bildiradi?
2. Nega odatiy RGB kanalining qiymati `0` dan `255` gacha?
3. Qora, oq va sariq ranglarning RGB qiymatlari qanday?
4. Bir xil `72 73 33` sonlari qanday qilib matn yoki rangni bildirishi mumkin?
5. Oddiy 24-bitli RGB modelida bitta piksel necha bayt egallaydi?
6. Tasvir o'lchami bilan uning fayl hajmi orasida qanday bog'lanish bor?
7. Video bilan rastr tasvir orasidagi bog'lanish qanday?
8. Alfa kanali qanday vazifani bajaradi?

## Dars xulosasi

- RGB modeli rangni qizil, yashil va ko'k kanallar yordamida ifodalaydi.
- Oddiy RGB modelida har bir kanal bir bayt va `0`–`255` oralig'idagi qiymatga
  ega.
- Uch kanal birgalikda bitta piksel rangini belgilaydi; odatda bu 24 bit yoki
  uch bayt ma'lumotdir.
- Rastr tasvirlar qator va ustunlarga joylashtirilgan piksellardan tuziladi.
- Bir xil baytlar kontekstga qarab matn, rang yoki boshqa ma'lumotni bildirishi
  mumkin.
- Video tez almashadigan tasvirlar ketma-ketligi, audio esa vaqt bo'yicha olingan
  raqamli o'lchovlar sifatida saqlanishi mumkin.
- Siqish tasvir va video fayllari hajmini kamaytirishga yordam beradi.

## Foydalanilgan manba

- [CS50x 2026, Lecture 0 — RGB](https://cs50.harvard.edu/x/notes/0/#rgb)
  — rang, piksel, tasvir, video va audioni raqamlar orqali ifodalash.
