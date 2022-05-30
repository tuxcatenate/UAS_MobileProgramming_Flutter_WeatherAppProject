Repository khusus untuk proyek UAS Mobile Programming. Aplikasi yang dikembangkan bertema Weather App dan dikembangkan menggunakan Flutter. Aplikasi dibuat untuk platform mobile Android.

tuxcatenate - Devid Sumarlie (535180008)

first changelog (29/05/2022) : changelog perubahan program hari ini dri 535180008 :

- perubahan warna ( sekedar test) untuk box yang berisi konten humidity dan wind speed di menu utama
- properti beberapa layout ada yg dirubah
- sudah ada info hari di upper side (hanya sebatas sun artinya sunday)
- fitur lokasi msih hrus berbasis pencarian , lokasi pas aplikasi awal dimulai msih cari lokasi dimana hosting API nya di host( search box sementara dinonaktiflan krena hrus kesepakatan apa perlu fitur cari lokasi atau add lokasi berdasarkan list dri popup - seperti di mockup kemarin)
- ikon max/min temperatur belum ada
- penghapusan tombol gulir(sliding) untuk pindah halaman ke kanan ( bentrokan atau overlapping sma komponen lain jadi peletekannya jelek)
- perlu tambah page terpisah untuk yg sliding tdi
- API ada 3 fungsi terpisah(weather & dailYWeather, weatherprovider merupakan inti fetch data APInya). Untuk menu slide sebelah kanan ( yg ada 7 days forecast dan todays detail ) fitur yang bisa jalan adalah humidity dan lainnya , tpi jika humidity ingin dipindah ke halaman home, msih belum ketemu workaround untuk problem fungsi return datanya

second changelog(30/05/2022) :
- penambahan app drawer untuk penambahan menu tambahan
- sliding menu hanya nampilkan 7 days forecast
- page baru sudah dibuat, menampilkan informasi today detail lebih banyak, tombol back sudah ada dan merupakan bawaan appBar() Flutter
- beberapa layout udh coba ditambah warnanya
- see moe itu page bru juga untuk nampilin 24 hours forecast
- icon temperatur msih stuck dan tidak muat untuk ditambahkan di samping value text min/max temperature

angggota kelompok : 
- Devid Sumarlie(535180008)
- Jasmine Kezia Halim(535180059)
- Refiando Vandana (535180098)
- Mohammad Indra Fachrulrozy(535180081)
- Bryan Immanuel(535180090)
