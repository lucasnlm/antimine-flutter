///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsIn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsIn({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.india,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <in>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsIn _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutorial';
  @override
  String get tutorial_basic =>
      'Peraturan permainannya mudah, angka pada kotak menunjukan jumlah ranjau yang berdekatan dengannya dan Anda harus menandai semua ranjau.';
  @override
  String get tutorial_text1 =>
      'Jika angka menyentuh jumlah kotak yang sama, maka semua kotak tersebut adalah ranjau.';
  @override
  String get tutorial_text2 =>
      'Setelah menandai bendera pertama Anda, tinjau angka dan analisis kotak selanjutnya.';
  @override
  String get tutorial_text3 =>
      'Jika kotak memiliki angka yang sama dari bendera, maka kotak yang tersisa bukanlah ranjau (Panah Hijau).';
  @override
  String get tutorial_text4 => 'Tinjau angka dan tetap membuka kotak.';
  @override
  String get games => 'Permainan';
  @override
  String get tap_to_begin => 'Ketuk untuk memulai';
  @override
  String get previous_games => 'Game Sebelumnya';
  @override
  String get minefield => 'Tingkat Kesulitan';
  @override
  String get standard => 'Standar';
  @override
  String get beginner => 'Pemula';
  @override
  String get intermediate => 'Menengah';
  @override
  String get expert => 'Ahli';
  @override
  String get master => 'Master';
  @override
  String get legend => 'Legenda';
  @override
  String get open => 'Buka';
  @override
  String get settings => 'Pengaturan';
  @override
  String get control_settings => 'Pengaturan Kontrol';
  @override
  String get default_button => 'Tombol default';
  @override
  String get shapes => 'Bentuk';
  @override
  String get animations => 'Animasi';
  @override
  String get vibration => 'Umpan Balik Haptik';
  @override
  String get about => 'Tentang';
  @override
  String get quit => 'Keluar';
  @override
  String get events => 'Statistik';
  @override
  String get custom => 'Kustom';
  @override
  String get start => 'Mulai';
  @override
  String get width => 'Lebar';
  @override
  String get height => 'Tinggi';
  @override
  String get mines => 'Ranjau';
  @override
  String get seed => 'Benih';
  @override
  String get retry_sure =>
      'Bila anda memulai permainan baru, Perkembangan anda saat ini akan hilang.';
  @override
  String get show_licenses => 'Tampilkan lisensi';
  @override
  String get new_game_request => 'Apakah Anda ingin memulai permainan baru?';
  @override
  String get mines_remaining => '%d ranjau';
  @override
  String get game_time => 'Waktu permainan';
  @override
  String get settings_general => 'Umum';
  @override
  String get settings_gameplay => 'Gameplay';
  @override
  String get export_settings => 'Ekspor';
  @override
  String get import_settings => 'Impor';
  @override
  String get exported_success => 'Pengaturan berhasil diekspor!';
  @override
  String get imported_success => 'Pengaturan berhasil diimpor!';
  @override
  String get settings_accessibility => 'Aksesibilitas';
  @override
  String get system => 'Sistem';
  @override
  String get sign_in_failed =>
      'Gagal untuk masuk. Silakan periksa koneksi jaringan anda dan coba lagi.';
  @override
  String get you_won => 'Anda menang!';
  @override
  String get victories => 'Kemenangan';
  @override
  String get you_lost => 'Anda Kalah!';
  @override
  String get you_finished => 'Selesai!';
  @override
  String get defeats => 'Kalah';
  @override
  String get generic_game_over => 'Semoga beruntung di permainan berikutnya.';
  @override
  String get generic_win => 'Anda menemukan %1\$d ranjau dalam %2\$d detik.';
  @override
  String get fail_to_share => 'Gagal berbagi';
  @override
  String get version_s => 'Versi %1\$s';
  @override
  String get sound_effects => 'Efek suara';
  @override
  String get music => 'Musik';
  @override
  String get music_by => 'Musik oleh %1\$s';
  @override
  String get check_music => 'Dengarkan di Spotify…';
  @override
  String get selected => 'Dipilih';
  @override
  String get are_you_sure => 'Anda yakin?';
  @override
  String get enable_automatic_flags => 'Aktifkan penempatan bendera otomatis';
  @override
  String get open_areas => 'Membuka Area';
  @override
  String get total_time => 'Total waktu';
  @override
  String get average_time => 'Waktu rata-rata';
  @override
  String get shortest_time => 'Waktu Tersingkat';
  @override
  String get performance => 'Peforma';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Pakai Bendera Tanda Tanya';
  @override
  String get no_guessing_mode => 'Mode \'sekali coba\'';
  @override
  String get control => 'Kontrol';
  @override
  String get control_types => 'Jenis Kontrol';
  @override
  String get single_click => 'Ketuk sekali';
  @override
  String get double_click => 'Sentuh dua kali';
  @override
  String get long_press => 'Tekan yang panjang';
  @override
  String get touch_sensibility => 'Sensitifitas Sentuh';
  @override
  String get open_tile => 'Buka';
  @override
  String get flag_tile => 'Bendera';
  @override
  String get retry => 'Ulangi';
  @override
  String get continue_game => 'Lanjutkan';
  @override
  String get empty => 'Kosong';
  @override
  String get cant_do_it_now => 'Tidak mungkin melakukan itu sekarang';
  @override
  String get mine_revealed => 'A mine has been revealed';
  @override
  String get fail_to_load_ad => 'Gagal memuat iklan';
  @override
  String get you_have_received => 'Anda telah menerima: \$param1';
  @override
  String get help_win_a_game =>
      'Untuk bantuan lebih lanjut, anda harus memenangkan satu permainan.';
  @override
  String get unknown_error => 'Kesalahan tidak diketahui.';
  @override
  String get error => 'Kesalahan!';
  @override
  String get leaderboards => 'Papan Peringkat';
  @override
  String get cancel => 'Batal';
  @override
  String get resume => 'Lanjutkan';
  @override
  String get yes => 'Ya';
  @override
  String get unlock => 'Buka';
  @override
  String get unlock_all => 'Buka semua';
  @override
  String get achievements => 'Prestasi';
  @override
  String get no => 'Tidak';
  @override
  String get general => 'Umum';
  @override
  String get more => 'Lainnya';
  @override
  String get source_code => 'Sumber Kode';
  @override
  String get translation => 'Terjemahan';
  @override
  String get language => 'Bahasa';
  @override
  String get licenses => 'Lisensi';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Memuat…';
  @override
  String get creating_valid_game => 'Membuat game yang valid…';
  @override
  String get connect => 'Sambungkan';
  @override
  String get connecting => 'Menghubungkan…';
  @override
  String get disconnect => 'Terputus';
  @override
  String get disconnected => 'Terputus';
  @override
  String get new_game => 'Permainan Baru';
  @override
  String get share => 'Bagikan';
  @override
  String get share_menu => 'Bagikan…';
  @override
  String get no_network => 'Tidak ada koneksi Internet.';
  @override
  String get delete_all => 'Hapus semua';
  @override
  String get appearance => 'Tampilan';
  @override
  String get themes => 'Tema';
  @override
  String get delete_all_message => 'Hapus permanen semua kejadian.';
  @override
  String get remove_ad => 'Hapus Iklan';
  @override
  String get help => 'Petunjuk';
  @override
  String get back => 'Kembali';
  @override
  String get donation => 'Donasi';
  @override
  String get open_on_game => 'Buka di layar permainan';
  @override
  String get show_windows => 'Tampilkan jendela';
  @override
  String get select_language => 'Pilih Bahasa';
  @override
  String get switch_control => 'Beralih: Bendera dan Bukaan';
  @override
  String get switch_control_desc =>
      'Gunakan tombol untuk beralih antara Bendera dan Bukaan';
  @override
  String get app_description =>
      'Anda harus membersihkan papan persegi panjang yang berisi ranjau tersembunyi tanpa meledakkannya.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play =>
      'Apakah Anda tahu cara bermain penyapu ranjau?';
  @override
  String get close => 'Tutup';
  @override
  String get open_tutorial => 'Buka Tutorial';
  @override
  String get click_numbers => 'Izinkan ketuk di nomor';
  @override
  String get flag_when_tap_numbers => 'Bendera saat memencet nomor';
  @override
  String get tap_to_customize => 'Ketuk untuk menyesuaikan';
  @override
  String get no_guess_fail_warning =>
      'Ladang Ranjau saat ini kemungkinan tidak dapat diselesaikan tanpa menebak!';
  @override
  String get fixed_size => 'Ukuran tetap';
  @override
  String get progressive => 'Progresif';
  @override
  String get value_limit_min => 'Minimal adalah %d';
  @override
  String get value_limit_max => 'Maks adalah %d';
  @override
  String get proportion_too_high => 'The proportion is too high!';
  @override
  String get highlight_unsolved_numbers =>
      'Soroti nomor yang belum diselesaikan';
  @override
  String get show_clock => 'Tampilkan jam';
  @override
  String get donate_request =>
      'Jika Anda menyukai permainan ini, pertimbangkan untuk berdonasi.';
  @override
  String get donate_help => 'It will help keep this project active!';
  @override
  String get acra_toast_text =>
      'Maaf, terjadi kesalahan. Tolong, kirimkan laporannya ke pengembang.';
  @override
  String get immersive_mode => 'Mode Mendalam';
  @override
  String get background_color => 'Warna Background';
  @override
  String get main_color => 'Warna utama';
  @override
  String get premium_exclusive => 'Premium exclusive!';
  @override
  String get preview => 'Pratinjau';
  @override
  String get shared_game => 'Bagikan permainan';
  @override
  String get shared_game_description =>
      'Masukkan di sini ada permainan kapal penyapu ranjau yang dibagikan kepada Anda.';
  @override
  String get code => 'Kode';
  @override
  String get image => 'Gambar';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Pulihkan Pembelian';
}
