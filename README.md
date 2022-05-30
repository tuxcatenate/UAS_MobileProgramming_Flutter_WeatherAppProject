Repository khusus untuk proyek UAS Mobile Programming. Aplikasi yang dikembangkan bertema Weather App dan dikembangkan menggunakan Flutter. Aplikasi dibuat untuk platform mobile Android.

tuxcatenate - Devid Sumarlie (535180008)

first changelog (29/05/2022) : changelog perubahan program hari ini dri 535180008 :

perubahan warna ( sekedar test) untuk box yang berisi konten humidity dan wind speed di menu utama
properti beberapa layout ada yg dirubah
sudah ada info hari di upper side (hanya sebatas sun artinya sunday)
fitur lokasi msih hrus berbasis pencarian , lokasi pas aplikasi awal dimulai msih cari lokasi dimana hosting API nya di host( search box sementara dinonaktifin krena hrus kesepakatan apa perlu fitur cari lokasi atau add lokasi berdasarkan list dri popup - kayak di mockup kemarin)
ikon max/min temperatur blom ada
penghapusan tombol gulir(sliding) untuk pindah halaman ke kanan ( bentrokan soalnya atau overlapping sma komponen lain jdi hasilnya jelek)
perlu tambah menu terpisah untuk yg sliding tdi
API ada 3 fungsi terpisah(weather & dailYWeather, weatherprovider inti dri narik API nya), yang di menu slide sebelah kanan ( yg ada 7 days forecast dan todays detail ) itu bisa jalan utk humidity dan lainnya , tpi kalo humitiy mau dipindah ke halaman home, msih belum nemu fix buat problem fungsi return datanya

second changelog(30/05/2022) :
- penambahan app drawer kalau mau tambah settingan atau page lain tpi lewat pilihan di nav drawer nya , dicomment aja codenya kalo gamau ini
- sliding menu hanya nampilkan 7 days forecast
- page bu sudah dibuat, menampilkan informasi today detail lebih banyak, tombol back udh ada dan emang bawaan appBar()
- beberapa layout udh coba ditambah warnanya
- see moe itu page bru juga untuk nampilin 24 hours forecast
- icon temperatur msih stuck dan ga muat untuk ditambahin ke min/max temperature
