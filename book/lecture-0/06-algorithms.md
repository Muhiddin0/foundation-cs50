# Algoritmlar: muammoni qadamlar bilan yechish

> **Holat:** tayyor

## Dars haqida

Bir muammoni bir nechta usul bilan yechish mumkin. Ularning barchasi to'g'ri
natija berishi mumkin, ammo ayrimlari boshqalaridan ancha tez yoki qulay bo'ladi.
Dasturchining vazifasi faqat ishlaydigan yo'lni topish emas, balki vaziyatga mos
va samarali yo'lni tanlashdan ham iborat.

Muammoni yechish uchun bajariladigan aniq va tartibli qadamlar ketma-ketligi
algoritm (algorithm) deyiladi. Ushbu darsda telefon kitobidan ism qidirish
misolida uch xil algoritmni solishtiramiz va ularning ishlash vaqti ma'lumot
miqdori oshganda qanday o'zgarishini ko'ramiz.

## O'quv maqsadlari

Bu darsni tugatgach, siz:

- algoritm tushunchasini o'z so'zlaringiz bilan izohlay olasiz;
- algoritmning kirish, qadamlar va chiqish qismlarini ajrata olasiz;
- chiziqli va ikkilik qidiruvni farqlay olasiz;
- algoritmning to'g'riligi va samaradorligini alohida baholay olasiz;
- `n`, `O(n)` va `O(log n)` yozuvlarining sodda ma'nosini tushuntira olasiz;
- tartiblangan ma'lumot ikkilik qidiruv uchun nega zarurligini anglaysiz.

## Boshlashdan oldin

- **Zarur bilimlar:** kirish, chiqish va muammoni qismlarga ajratish tushunchasi.
- **Kerakli dasturlar:** shart emas.
- **Taxminiy vaqt:** 40–50 daqiqa.

## Asosiy terminlar

| Termin | Inglizcha nomi | Izoh |
| --- | --- | --- |
| Algoritm | Algorithm | Muammoni yechuvchi aniq qadamlar ketma-ketligi. |
| To'g'rilik | Correctness | Algoritm kerakli natijani berishi. |
| Samaradorlik | Efficiency | Vaqt va resurslardan oqilona foydalanish. |
| Kirish hajmi | Input size | Qayta ishlanadigan ma'lumot miqdori. |
| Chiziqli qidiruv | Linear search | Elementlarni ketma-ket tekshirish. |
| Ikkilik qidiruv | Binary search | Oraliqni har qadamda yarmiga qisqartirish. |
| Ishlash vaqti | Running time | Algoritm sarflaydigan qadamlar miqdori. |
| Big-O | Big O notation | O'sish tezligini ifodalovchi yozuv. |

## 1. Algoritm nima?

Algoritm — ma'lum kirish ma'lumotini kerakli chiqishga aylantiradigan qadamlar
ketma-ketligi.

```text
kirish  →  algoritm  →  chiqish
```

Masalan, ikki sonning kattasini topish vazifasini olaylik:

- **Kirish:** ikkita son.
- **Qadamlar:** sonlarni taqqoslash va kattasini tanlash.
- **Chiqish:** kattaroq son.

Algoritm faqat kompyuter dasturi bo'lishi shart emas. Ovqat retsepti, manzilga
borish yo'riqnomasi va kitobni javondan topish tartibi ham algoritmga o'xshaydi.
Muhimi, qadamlar bajaruvchiga tushunarli va kerakli natijaga olib boradigan
bo'lishi kerak.

## 2. Yaxshi algoritmning xususiyatlari

Foydali algoritm odatda quyidagi xususiyatlarga ega:

1. **Aniqlik.** Har bir qadam bir ma'noli va tushunarli yozilgan.
2. **Tugallanish.** Algoritm cheksiz davom etmaydi va bir nuqtada to'xtaydi.
3. **To'g'rilik.** Ruxsat etilgan kirishlar uchun kutilgan natijani beradi.
4. **Umumiylik.** Faqat bitta misolni emas, shu turdagi vazifalarni yechadi.
5. **Samaradorlik.** Keragidan ortiq vaqt yoki xotira sarflamaydi.

Masalan, «telefon kitobini och va ismni top» ko'rsatmasi yetarlicha aniq emas.
Qaysi betdan boshlash, keyingi qadam nima va ism kitobda bo'lmasa nima qilish
kerakligi ko'rsatilmagan.

Tez ishlaydigan, ammo ba'zan noto'g'ri javob beradigan usul yaxshi algoritm
hisoblanmaydi. Avval to'g'rilik, keyin samaradorlik haqida o'ylash kerak.

## 3. Vazifa: telefon kitobidan ism topish

Tasavvur qiling, qo'lingizda ismlar alifbo tartibida yozilgan katta telefon
kitobi bor. Undan `Malika` ismini topishingiz kerak.

- **Kirish:** tartiblangan telefon kitobi va qidirilayotgan ism.
- **Chiqish:** ism joylashgan bet yoki «ism topilmadi» degan natija.

Bu muammoni bir nechta algoritm bilan yechish mumkin. Ularni solishtirish uchun
kitobdagi ismlar sonini `n` bilan belgilaymiz. Masalan, kitobda 100 ta ism bo'lsa,
`n = 100`.

## 4. Birinchi usul: birma-bir qidirish

Eng sodda usul kitobning birinchi betidan boshlash va har bir keyingi betni
navbat bilan tekshirishdir:

```text
1. Kitobning birinchi betini oching.
2. Betdagi ismni tekshiring.
3. Kerakli ism bo'lsa, qidiruvni tugating.
4. Keyingi bet mavjud bo'lsa, unga o'ting va 2-qadamni takrorlang.
5. Betlar tugasa, "ism topilmadi" deb xabar bering.
```

Bu chiziqli qidiruv (linear search) deyiladi. Ism birinchi betda bo'lsa, faqat
bitta tekshiruv yetadi. Ism oxirgi betda yoki umuman kitobda bo'lmasa, barcha
`n` ta ismni tekshirishga to'g'ri keladi.

```text
eng yaxshi holat: 1 ta tekshiruv
eng yomon holat:  n ta tekshiruv
```

Chiziqli qidiruvning afzalligi shundaki, u ma'lumot tartiblanmagan bo'lsa ham
ishlaydi. Kamchiligi — ma'lumot ko'paygani sari qadamlar soni ham deyarli shu
miqdorda oshadi.

## 5. Ikkinchi usul: ikki betdan qidirish

Qidiruvni tezlashtirish uchun har safar ikki bet oldinga o'tish mumkin. Bunday
yondashuvda taxminan `n/2` ta qadam kerak bo'ladi:

```text
100 ta bet → taxminan 50 ta qadam
1 000 ta bet → taxminan 500 ta qadam
```

Bu birma-bir qidirishdan ikki baravar tezroq ko'rinadi. Ammo muhim xavf mavjud:
agar faqat har ikkinchi betni ko'rsangiz, kerakli ism tashlab ketilgan betda
qolishi mumkin.

Algoritm to'g'ri bo'lishi uchun o'tilgan juftlikdagi ikkala bet ham tekshirilishi
yoki qidirilayotgan joydan o'tib ketilganda oldingi betga qaytilishi kerak.
Shuningdek, kitobdagi betlar soni toq bo'lsa, oxirgi bet unutilmasligi lozim.

Bu usul amalda qadamlarning doimiy qismini kamaytiradi. Lekin ma'lumot hajmi ikki
baravar oshsa, ish miqdori ham taxminan ikki baravar oshadi. Uning o'sish turi
chiziqli qidiruvnikiga o'xshash bo'lib qoladi.

## 6. Uchinchi usul: oraliqni yarmiga bo'lish

Telefon kitobidagi ismlar alifbo tartibida ekanidan foydalanib, ancha tezroq
qidirish mumkin:

```text
1. Kitobning o'rtasini oching.
2. O'rtadagi ismni qidirilayotgan ism bilan taqqoslang.
3. Ismlar teng bo'lsa, qidiruvni tugating.
4. Kerakli ism oldin kelsa, faqat chap yarmini qoldiring.
5. Kerakli ism keyin kelsa, faqat o'ng yarmini qoldiring.
6. Qolgan qism uchun shu qadamlarni takrorlang.
7. Qidiriladigan qism qolmasa, "ism topilmadi" deb xabar bering.
```

Bu ikkilik qidiruv (binary search) deyiladi. Har bir taqqoslashdan keyin
qidiriladigan ma'lumotning yarmi tashlab yuboriladi.

Jarayon quyidagicha qisqaradi:

```text
1 024 → 512 → 256 → 128 → 64 → 32 → 16 → 8 → 4 → 2 → 1
```

`1 024` ta elementni bittagacha qisqartirish uchun atigi 10 marta yarmiga
bo'lish yetadi. Aniq taqqoslashlar soni algoritm tafsiloti va qidirilayotgan
elementga qarab bittaga farq qilishi mumkin, ammo o'sish juda sekin bo'ladi.

### Sonlar bilan misol

Quyidagi tartiblangan ro'yxatdan `44` sonini qidiramiz:

```text
[3, 8, 12, 19, 24, 31, 44, 57]
```

1. O'rtadagi `19` ni tekshiramiz. `44` katta, chap yarmini tashlaymiz.
2. Qolgan qismdagi `31` ni tekshiramiz. `44` katta, chap qismini tashlaymiz.
3. Keyingi o'rta qiymat `44`. Son topildi.

Birma-bir qidiruv `44` ga yetguncha yettita qiymatni ko'rishi mumkin edi.
Ikkilik qidiruv esa bu misolda uchta taqqoslash bilan tugadi.

## 7. Nega tartib muhim?

Ikkilik qidiruv faqat ma'lumot tartiblangan bo'lsa ishlaydi. O'rtadagi qiymat
qidirilayotgan qiymatdan kichik ekanini bilsak, qidirilayotgan qiymat o'ngda
bo'lishi mumkin degan xulosaga faqat tartib tufayli kelamiz.

Masalan, tartiblanmagan ro'yxatni olaylik:

```text
[31, 3, 57, 12, 44, 8, 24, 19]
```

O'rtadagi `12` soni `44` dan kichik. Lekin `44` ning qaysi tomonda ekanini bu
ma'lumotdan aniqlab bo'lmaydi. Ro'yxatning yarmini tashlash to'g'ri javobni ham
yo'qotishi mumkin.

Ma'lumotni avval tartiblash ham vaqt talab qiladi. Bir marta qidirish kerak bo'lsa,
oddiy chiziqli qidiruv qulayroq bo'lishi mumkin. Bir ro'yxatdan ko'p marta
qidirilsa, uni oldindan tartiblash keyingi qidiruvlarni tezlashtiradi.

## 8. Algoritm samaradorligini o'lchash

Bir algoritm noutbukda tez, boshqasida sekin ishlashi mumkin. Shu sababli
algoritmlarni faqat soniya bilan solishtirish har doim ham qulay emas. Buning
o'rniga kirish hajmi oshganda qadamlar soni qanday o'sishiga qaraymiz.

| Usul | Eng yomon holatdagi qadamlar | O'sish turi |
| --- | --- | --- |
| Birma-bir qidirish | taxminan `n` | `O(n)` |
| Ikki betdan qidirish | taxminan `n/2` | `O(n)` |
| Ikkilik qidiruv | taxminan `log₂ n` | `O(log n)` |

Big-O yozuvi (Big O notation) kirish hajmi kattalashganda algoritm ishining
o'sish tezligini soddalashtirib ifodalaydi.

### `O(n)` — chiziqli o'sish

`O(n)` algoritmda ma'lumot hajmi ikki baravar oshsa, eng yomon holatdagi ish ham
taxminan ikki baravar oshadi:

```text
100 ta ism   → 100 tagacha tekshiruv
200 ta ism   → 200 tagacha tekshiruv
```

Ikki betdan qidirish `n/2` qadam bajarishi mumkin, lekin Big-O doimiy
ko'paytuvchilarni hisobga olmaydi. Shu sababli `O(n/2)` alohida sinf emas:

```text
O(n/2) = O(n)
```

Ikki betli usul amalda tezroq bo'lishi mumkin, ammo ikkala usul ham ma'lumot
hajmiga chiziqli ravishda bog'liq.

### `O(log n)` — logarifmik o'sish

`O(log n)` algoritm har qadamda muammoni doimiy ulushga, bu misolda yarmiga
qisqartiradi. Kirish hajmi ikki baravar oshganda odatda faqat bitta qo'shimcha
qadam kerak bo'ladi:

```text
1 024 ta element → taxminan 10 marta yarmiga bo'lish
2 048 ta element → taxminan 11 marta yarmiga bo'lish
```

Big-O ichida logarifm asosi odatda yozilmaydi. Asos o'zgarishi faqat doimiy
ko'paytuvchi hosil qiladi, Big-O esa umumiy o'sish turiga e'tibor beradi.

## 9. Eng yaxshi va eng yomon holat

Algoritm ishlash vaqti kirish ma'lumotining joylashuviga ham bog'liq.

Chiziqli qidiruvda:

- ism birinchi joyda bo'lsa, eng yaxshi holat yuz beradi;
- ism oxirida yoki ro'yxatda yo'q bo'lsa, eng yomon holat yuz beradi.

Ikkilik qidiruvda:

- ism birinchi tekshirilgan o'rtada bo'lsa, darhol topiladi;
- har safar yana bir yarmini tekshirish kerak bo'lsa, ko'proq qadam bajariladi.

Algoritmlarni boshlang'ich tahlil qilishda ko'pincha eng yomon holatga qaraladi.
Bu usul bajarilish uchun qancha ish ketishining yuqori chegarasini tushunishga
yordam beradi.

## 10. To'g'ri algoritmni tanlash

Har bir vazifa uchun bitta mutlaq «eng yaxshi» algoritm mavjud emas. Tanlov
ma'lumot va vaziyatga bog'liq:

- ma'lumot tartiblanganmi;
- qidiruv bir marta yoki ko'p marta bajariladimi;
- ma'lumot hajmi qanchalik katta;
- xotira yoki vaqt qanchalik cheklangan;
- algoritm barcha holatlarda to'g'ri natija beradimi.

Kichik ro'yxatda sodda algoritm yetarli bo'lishi mumkin. Millionlab elementlar
bilan ishlaganda esa samaradorlik juda katta farq qiladi.

## Ko'p uchraydigan xatolar

- **Xato:** tez ishlaydigan har qanday usul yaxshi algoritm deb hisoblash.
  **Sabab va yechim:** algoritm avvalo barcha kerakli holatlarda to'g'ri natija
  berishi kerak.

- **Xato:** ikkilik qidiruvni tartiblanmagan ro'yxatda ishlatish.
  **Sabab va yechim:** tartib bo'lmasa, qaysi yarmini tashlash mumkinligini
  aniqlab bo'lmaydi.

- **Xato:** `n/2` va `n` Big-O bo'yicha boshqa-boshqa o'sish turi deb o'ylash.
  **Sabab va yechim:** doimiy `1/2` ko'paytuvchi olib tashlanadi; ikkalasi ham
  `O(n)`.

- **Xato:** Big-O aniq ishlash vaqtini soniyalarda beradi deb hisoblash.
  **Sabab va yechim:** Big-O kirish kattalashgandagi o'sish tezligini bildiradi.

- **Xato:** qidirilayotgan element yo'q bo'lgan holatni unutish.
  **Sabab va yechim:** algoritm qidiruv qachon tugashi va «topilmadi» natijasini
  qachon qaytarishini aniq belgilashi kerak.

## Amaliy mashqlar

### 1-mashq — Algoritm qismlarini toping

Choy tayyorlash jarayonini tanlang va quyidagilarni yozing:

1. kirish ma'lumotlari;
2. tartiblangan qadamlar;
3. chiqish natijasi;
4. jarayon qachon tugashi.

Qadamlaringizni boshqa odam qo'shimcha savolsiz bajara olishini tekshiring.

### 2-mashq — Chiziqli qidiruvni kuzating

Quyidagi ro'yxatdan `23` sonini birma-bir qidiring:

```text
[2, 5, 8, 12, 16, 23, 38, 56]
```

Tekshirilgan qiymatlarni tartib bilan yozing va jami taqqoslashlar sonini toping.
Keyin `40` sonini qidirsangiz nima sodir bo'lishini tushuntiring.

### 3-mashq — Ikkilik qidiruvni kuzating

Xuddi shu tartiblangan ro'yxatdan `23` sonini ikkilik qidiruv bilan toping:

```text
[2, 5, 8, 12, 16, 23, 38, 56]
```

Har bir qadamda:

1. tekshirilgan o'rta qiymatni;
2. tashlab yuborilgan yarmini;
3. qolgan qidiruv oralig'ini yozing.

O'rta joyda ikkita qiymat qolsa, chapdagisini tanlash qoidasidan foydalaning.

### 4-mashq — O'sishni solishtiring

Ro'yxatda `1 024` ta element bor deb tasavvur qiling.

1. Chiziqli qidiruv eng yomon holatda nechta tekshiruv bajarishi mumkin?
2. Juftlab qidirish taxminan nechta qadam oladi?
3. Ikkilik qidiruv oralig'ini bittagacha necha marta yarmiga bo'ladi?
4. Elementlar soni `2 048` ga oshsa, har bir javob qanday o'zgaradi?

### 5-mashq — Xatoni toping

Quyidagi ro'yxatda ikkilik qidiruv ishlatish taklif qilindi:

```text
[41, 7, 19, 3, 28, 55, 12]
```

Nega bu taklif xavfli? Ikkita mumkin bo'lgan yechim yozing: biri ro'yxatni
o'zgartirmasdan, ikkinchisi esa uni oldindan tayyorlash orqali ishlasin.

## Mini-loyiha — Sonni yetti savolda toping

- **Vazifa:** sherigingiz `1` dan `100` gacha bitta son o'ylasin. Siz sonni
  ko'pi bilan yettita «katta», «kichik» yoki «teng» javobli savol bilan toping.
- **Algoritm:** har safar qolgan oraliqning o'rtasidagi sonni so'rang va
  javobga qarab oraliqning yarmini tashlang.
- **Kuzatuv:** har qadamdagi quyi chegara, yuqori chegara va taxminni jadvalga
  yozing.
- **Sinov:** eng kichik, eng katta va oraliqdagi bir nechta son bilan tekshiring.
- **Qabul mezonlari:** algoritm har qanday `1`–`100` sonini yetti yoki undan kam
  savolda topishi va har qadamda oraliq to'g'ri qisqarishi kerak.

## O'zingizni tekshiring

1. Algoritm nima va u qanday asosiy qismlardan iborat?
2. Algoritmning to'g'riligi bilan samaradorligi orasidagi farq nima?
3. Chiziqli qidiruvning kuchli va zaif tomonlari qanday?
4. Ikkilik qidiruv har qadamda muammoni qanday kichraytiradi?
5. Nega ikkilik qidiruv uchun ma'lumot tartiblangan bo'lishi kerak?
6. `O(n)` va `O(log n)` o'sishlari orasida qanday farq bor?
7. Nega `n/2` qadamli algoritm ham `O(n)` deb yoziladi?
8. Kirish hajmi ikki baravar oshsa, ikkilik qidiruv qanday o'zgaradi?

## Dars xulosasi

- Algoritm muammoni yechadigan aniq va tartibli qadamlar ketma-ketligidir.
- Algoritm avvalo to'g'ri, tugallanuvchi va tushunarli bo'lishi kerak.
- Chiziqli qidiruv elementlarni birma-bir tekshiradi va `O(n)` tezlikda o'sadi.
- Juftlab qidirish qadamlar sonini kamaytiradi, lekin uning o'sishi ham
  `O(n)` bo'lib qoladi.
- Ikkilik qidiruv tartiblangan ma'lumotni har qadamda yarmiga qisqartiradi va
  `O(log n)` tezlikda o'sadi.
- Big-O aniq soniyalarni emas, kirish kattalashganda ish miqdori qanday o'sishini
  ifodalaydi.
- Algoritm tanlashda ma'lumotning tartibi, hajmi va undan foydalanish usuli
  hisobga olinadi.

## Foydalanilgan manba

- [CS50x 2026, Lecture 0 — Algorithms](https://cs50.harvard.edu/x/notes/0/#algorithms)
  — telefon kitobidan qidirish, algoritmlar va ishlash vaqtini solishtirish.
