# Pertanyaan Tugas 7

## Referensi
1. [Tambah lebih banyak button](https://www.fluttercampus.com/guide/19/how-to-add-multiple-floating-action-buttons-in-one-screen-flutter-app/)
2. [Referensi alignment button](https://stackoverflow.com/questions/72152176/how-to-put-buttons-on-two-ends-of-screen-in-flutter)
3. [Referensi change color # 1](https://programmingwithswift.com/change-button-color-on-press-with-flutter/)
4. [Referensi change color # 2](https://www.flutterbeads.com/change-text-color-in-flutter/#:~:text=its%20color%20parameter.-,Steps,the%20color%20of%20your%20choice.)
5. [If else](https://www.tutorialspoint.com/dart_programming/dart_programming_if_else_statement.htm)
6. [Hide button](https://stackoverflow.com/questions/44489804/how-to-show-hide-widgets-programmatically-in-flutter)

## Jawaban
1. Stateless widget adalah widget yang statis dan hanya akan mengikuti state awal yang telah diassign kepadanya dan tidak akan berubah meskipun data disekitarnya berubah. Namun, stateful widget adalah widget yang lebih dinamis dan dapat berubah sesuai dengan data disekitarnya. Contoh dari stateless widget adalah increment button karena ia tidak akan berubah berapapun nilai counternya sedangkan untuk stateful widget contohnya adalah counter serta text karena ia akan berubah setiap button diclick.
2. Dalam proyek ini saya menggunakan dua widget yaitu Text dan Floating Action Button. Text ini memiliki fungsi untuk menampilkan text yang ingin ditampilkan dalam program sementara Floating Action Button berfungsi untuk membuat sebuah button yang dapat kita gunakan untuk melaksanakan sebuah action atau fungsi yang telah diassign kepadanya.
3. `setState()` berfungsi untuk memanggil kembali build method yang telah kita definisikan agar ia merepresentasikan value baru yang telah kita update. Variabel yang akan dipengaruhi oleh `setState()` sendiri adalah semua variabel yang masuk didalam lingkupnya. 
4. `const` mengassign value disaat compile time sehingga pada dasarnya value yang diassign bersifat immutable dan sudah tidak dapat diganti lagi tapi ini juga berarti bahwa hanya value yang dapat diassign saat compile time yang dapat diberikan `const`. Namun, untuk `final` ia bersifat mirip dengan `val` pada kotlin yakni ia bersifat immutable kecuali apabila yang diberikan adalah sebuah collection data yang masih bersifat mutable seperti list tapi untuk string maupun tipe data lainnya yang diberikan `final` akan bersifat immutable dan hanya akan mengikuti value awal yang telah diassign kepadanya. 
5. Untuk implementasi tugas diatas saya menerapkannya dengan beberapa referensi. Pertama-tama saya menambahkan lagi button untuk mengurangi counter serta mengalignnya menggunakan referensi satu dan dua. Selanjutnya saya membuat function set text untuk mengatur text berdasarkan posisi counter saat ini menggunakan referensi 3 dan 4. Dalam penerapan hal-hal tersebut saya menggunakan conditional statement begitu pula untuk bonus berdasarkan referensi ke 5 dan 6.


# Pertanyaan Tugas 8

## Referensi pengerjaan tugas
1. [Membuat card # 1](https://medium.com/dlt-labs-publication/how-to-build-a-flutter-card-list-in-less-than-10-minutes-9839f79a6c08)
2.  [Membuat card # 2](https://www.javatpoint.com/flutter-card)
2. [Parse integer from string](https://www.educative.io/answers/how-to-cast-a-string-to-an-integer-in-dart)
3. [Tryparse](https://api.flutter.dev/flutter/dart-core/int/tryParse.html)
4. [Send data](https://docs.flutter.dev/cookbook/navigation/passing-data)


## Jawaban
1. `Navigator.pushReplacement` mempush page baru sekaligus menghapus page lama yang sebelumnya kita akses sehingga kita tidak bisa mengakses halaman sebelumnya dengan `Navigator.pop` karena top of the stack sudah diganti dengan halaman baru. Namun, untuk `Navigator.push` dia hanya mempush page baru ke top of the stack sehingga kita bisa mengakses halaman sebelumnya dengan `Navigator.pop`.
2. Widget yang saya pakai di proyek ini adalah, 
- `Text` : untuk menampilkan string di app
- `Drawer` : Untuk menampilkan burger menu di app
- `Column` : Untuk memberi layout kepada app secara kolom
- `Navigator` : Untuk membuat routing antara page di app
- `MaterialPageRoute` : Untuk membuild page yang sedang direquest
- `ListTile` : Untuk membuat layout dalam app yang dapat kita tap dalam bentukan baris
- `Center` : Untuk membuat body di tengah app
- `MainAxisAlignment` : Untuk mengatur alignment di sumbu x
- `CrossAxisAlignment` : Untuk mengatur alignment di sumbu y
- `TextStyle` : Untuk memberi style kepada `Text` widget
- `Container` : Untuk membuat container agar dapat kita beri padding dan margin dan border
- `TextFormField` : Untuk menerima input text dalam app
- `InputDecoration` : Untuk menghias field yang telah dibuat
- `OutlineInputBorder` : Untuk memberi border pada field
- `BorderRadius` : Untuk mengatur radius border
- `Padding` : Untuk mengatur padding
- `EdgeInsets` : Untuk memberi ukuran padding di setiap ujung
- `ButtonTheme` : Untuk mengatur tema button
- `DropdownButtonFormField` : Untuk membuat dropdown button
- `Icon` & `Icons` : Untuk memasukkan icon dalam app
- `TextButton` : Untuk membuat sebuah button dengan text di tengahnya
- `ButtonStyle` : Untuk memberi style pada button
- `Dialog` : Untuk memunculkan pop up dialog
- `ListView` : Untuk membuat list tile yang dapat automatis di scroll bila sudah terlalu panjang
- `Card` : Untuk membuat card pada app
- `Stack` : Untuk membuat layout yang dapat menyimpan child di dalamnya sehingga mereka semua bisa dibuat dalam satu baris
- `Alignment` : Untuk memberikan alignment kepada child

3. Contoh - contoh event di flutter adalah,
- `onPressed` : Ia akan terpanggil saat ada sebuah button yang dipencet
- `onChange` : Ia akan dipanggil ketika ada sebuah field atau yang lainnya diubah isinya
- `onTap` : Kurang lebih sama dengan `onPressed` tapi bedanya ia bukan hanya dibatasi pada button

4. `Navigator` mengganti halaman pada flutter menggunakan konsep stack dimana top of the stack adalah halaman yang sekarang sedang kita tampilkan. Sehingga ketika kita ingin menampilkan halaman baru maka `Navigator` akan mempush page baru ke stack sedangkan ketika kita ingin kembali ke halaman sebelumnya, sebelum di push halaman baru maka `Navigator` akan mempop page yang ada di paling atas. Hal ini pun dapat dipengaruhi oleh banyak hal seperti `Navigator.push` dan `Navigator.pushReplacement` yang memengaruhi bagaimana `Navigator` mempush page baru ke stack.

5. Untuk checklist diatas saya mengikuti dari tutorial 7 kemarin untuk implementasi drawer menu serta membuat form untuk menambah budget. Untuk navigasi saya juga menggunakan drawer tutorial 7 yang sudah dimodifikasi untuk memenuhi kebutuhan tugas ini. Untuk menampilkan data budget saya menggunakan class baru yakni budget untuk menyimpan segala input dari form sehingga dapat diakses oleh data_budget.dart dari form_budget.dart dan menggunakan `ListView.builder` saya dapat membuat card sebanyak list budget yang telah disimpan di dalam class. Dan untuk menampilkan datanya sendiri saya menggunakan widget `Card` 

# Pertanyaan Tugas 9

1. Ya, data sebenarnya dapat diambil tanpa membuat model terlebih dahulu tapi hasilnya akan lebih baik apabila kita membuat model terlebih dahulu. Pembuatan model membuat data menjadi lebih terstruktur dan lebih mudah kita olah dalam program.

2. Widget yang saya gunakan di program ini kurang lebih sama dengan tugas 8 dengan beberapa tambahan.
`FutureBuilder`: berfungsi untuk membangun apapun yang disuruh kepadanya berdasarkan hasil dari `future`
`CircularProgressIndicator`: Sebagai icon untuk menunjukkan program sedang loading.
`InkWell`: Untuk membuat list menjadi responsive dan kita dapat membuka detailed page dari masing-masing watch list.

3. Untuk mekanisme pengambilan data kurang lebih sebagai berikut.
- Menambahkan http ke projek untuk memungkinkan pengambilan data dari web
- Membuat model untuk data yang akan kita ambil untuk memudahkan pengolahannya.
- Membuat  `get` request untuk mengambil data dari web
- Mengubah data yang telah didapatkan ke dalam bentuk json dan ke dalam model yang telah didefinisikan
- Setelah data telah selesai didapatkan maka kita tinggal menampilkannya.

4. Cara saya melakukan checklist tersebut adalah 
- Menambahkan drawer baru untuk page watchlist
- Membuat handler untuk request http untuk mengambil data dari web
- Membuat model untuk watchlist menggunakan bantuan quicktype
- Membuat mywatchlist page untuk menampilkan masing-masing film dalam bentuk card yang diarahkan ke masing-masing detail page
- Membuat detail page untuk masing-masing film yang menampilkan semua data film tersebut.