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
class TranslationsTr extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsTr({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.tr,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <tr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsTr _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Eğitim';
  @override
  String get tutorial_basic =>
      'Oyunun kuralı basit, bir karenin üzerindeki sayı ona bitişik olan mayınların sayısını gösterir ve tüm mayınları işaretlemeniz gerekir.';
  @override
  String get tutorial_text1 =>
      'Eğer bir sayı aynı sayıda kareye dokunuyorsa, karelerin hepsi mayınlıdır.';
  @override
  String get tutorial_text2 =>
      'İlk bayrağınızı işaretledikten sonra sayıları gözden geçirin ve bir sonraki kareyi inceleyin.';
  @override
  String get tutorial_text3 =>
      'Eğer bir kare aynı sayıdaki bayrağa sahipse ona bitişik olan diğer hiçbir kare mayınlı değildir (yeşil ok).';
  @override
  String get tutorial_text4 =>
      'Numaraları gözden geçirin ve kareleri açmaya devam edin.';
  @override
  String get games => 'Oyunlar';
  @override
  String get tap_to_begin => 'Başlamak için dokunun';
  @override
  String get previous_games => 'Önceki Oyunlar';
  @override
  String get minefield => 'Zorluk';
  @override
  String get standard => 'Standart';
  @override
  String get beginner => 'Başlangıç';
  @override
  String get intermediate => 'Orta düzey';
  @override
  String get expert => 'Uzman';
  @override
  String get master => 'Usta';
  @override
  String get legend => 'Efsane';
  @override
  String get open => 'Aç';
  @override
  String get settings => 'Ayarlar';
  @override
  String get control_settings => 'Kontrol ayarları';
  @override
  String get default_button => 'Varsayılan Tuş';
  @override
  String get shapes => 'Şekiller';
  @override
  String get animations => 'Animasyonlar';
  @override
  String get vibration => 'Dokunsal Geribildirim';
  @override
  String get about => 'Hakkında';
  @override
  String get quit => 'Çık';
  @override
  String get events => 'İstatistikler';
  @override
  String get custom => 'Özel';
  @override
  String get start => 'Başlat';
  @override
  String get width => 'Genişlik';
  @override
  String get height => 'Yükseklik';
  @override
  String get mines => 'Mayınlar';
  @override
  String get seed => 'Oluşum Numarası';
  @override
  String get retry_sure =>
      'Yeni bir oyuna başlarsanız,\nmevcut ilerlemeniz kaybolacak.';
  @override
  String get show_licenses => 'Lisansları Göster';
  @override
  String get new_game_request => 'Yeni bir oyun başlatmak istiyor musunuz?';
  @override
  String get mines_remaining => '%d mayın';
  @override
  String get game_time => 'Oyun Süresi';
  @override
  String get settings_general => 'Genel';
  @override
  String get settings_gameplay => 'Oynanış';
  @override
  String get export_settings => 'Dışa Aktar';
  @override
  String get import_settings => 'İçe Aktar';
  @override
  String get exported_success => 'Ayarlar dışa aktarıldı!';
  @override
  String get imported_success => 'Ayarlar içe aktarıldı!';
  @override
  String get settings_accessibility => 'Erişilebilirlik';
  @override
  String get system => 'Sistem';
  @override
  String get sign_in_failed =>
      'Oturum açılamadı. Lütfen ağ bağlantınızı kontrol edip tekrar deneyin.';
  @override
  String get you_won => 'Kazandın!';
  @override
  String get victories => 'Zaferler';
  @override
  String get you_lost => 'Kaybettin!';
  @override
  String get you_finished => 'Bitirdin!';
  @override
  String get defeats => 'Yenilgi';
  @override
  String get generic_game_over => 'Sonraki oyunda iyi şanslar.';
  @override
  String get generic_win => '%2\$d saniye içinde %1\$d mayın buldunuz.';
  @override
  String get fail_to_share => 'Paylaşılamıyor';
  @override
  String get version_s => 'Sürüm: %1\$s';
  @override
  String get sound_effects => 'Ses Efektleri';
  @override
  String get music => 'Müzik';
  @override
  String get music_by => '%1\$s tarafından müzik';
  @override
  String get check_music => 'Spotify\'da dinle…';
  @override
  String get selected => 'Seçildi';
  @override
  String get are_you_sure => 'Emin misiniz?';
  @override
  String get enable_automatic_flags => 'Bayrakları Otomatik Yerleştir';
  @override
  String get open_areas => 'Açık Alanlar';
  @override
  String get total_time => 'Toplam Süre';
  @override
  String get average_time => 'Ortalama Süre';
  @override
  String get shortest_time => 'En Kısa Zaman';
  @override
  String get performance => 'Performans';
  @override
  String get ok => 'Tamam';
  @override
  String get use_question_mark => 'Soru İşareti Kullan';
  @override
  String get no_guessing_mode => '"Tahmin yok" modu';
  @override
  String get control => 'Kontroller';
  @override
  String get control_types => 'Kontrol Tipleri';
  @override
  String get single_click => 'Tek Tıklama';
  @override
  String get double_click => 'Çift Tıklama';
  @override
  String get long_press => 'Uzun Basış';
  @override
  String get touch_sensibility => 'Dokunma hassasiyeti';
  @override
  String get open_tile => 'Aç';
  @override
  String get flag_tile => 'Bayrak';
  @override
  String get retry => 'Yeniden dene';
  @override
  String get continue_game => 'Devam Et';
  @override
  String get empty => 'Boş';
  @override
  String get cant_do_it_now => 'Bunu şimdi yapmak imkansız';
  @override
  String get mine_revealed => 'Bir mayın ortaya çıkarıldı';
  @override
  String get fail_to_load_ad => 'Reklamı yükleme başarısız oldu';
  @override
  String get you_have_received => 'Aldın: \$param1';
  @override
  String get help_win_a_game =>
      'Daha fazla ipucu için bir oyun kazanmalısınız.';
  @override
  String get unknown_error => 'Bilinmeyen hata.';
  @override
  String get error => 'Hata!';
  @override
  String get leaderboards => 'Liderlik Tablosu';
  @override
  String get cancel => 'İptal';
  @override
  String get resume => 'Devam et';
  @override
  String get yes => 'Evet';
  @override
  String get unlock => 'Kilidini Aç';
  @override
  String get unlock_all => 'Tümünü aç';
  @override
  String get achievements => 'Başarımlar';
  @override
  String get no => 'Hayır';
  @override
  String get general => 'Genel';
  @override
  String get more => 'Daha Fazla';
  @override
  String get source_code => 'Kaynak Kodu';
  @override
  String get translation => 'Çeviri';
  @override
  String get language => 'Dil';
  @override
  String get licenses => 'Lisanslar';
  @override
  String get google_play_games => 'Google Play Oyunlar';
  @override
  String get loading => 'Yükleniyor…';
  @override
  String get creating_valid_game => 'Geçerli bir oyun yaratılıyor…';
  @override
  String get connect => 'Bağlan';
  @override
  String get connecting => 'Bağlanıyor…';
  @override
  String get disconnect => 'Bağlantıyı kes';
  @override
  String get disconnected => 'Bağlantı kesildi';
  @override
  String get new_game => 'Yeni Oyun';
  @override
  String get share => 'Paylaş';
  @override
  String get share_menu => 'Paylaş…';
  @override
  String get no_network => 'İnternet bağlantısı yok.';
  @override
  String get delete_all => 'Tümünü sil';
  @override
  String get appearance => 'Görünüm';
  @override
  String get themes => 'Temalar';
  @override
  String get delete_all_message => 'Tüm etkinlikleri kalıcı olarak silin.';
  @override
  String get remove_ad => 'Reklamları kaldır';
  @override
  String get help => 'İpucu';
  @override
  String get back => 'Geri';
  @override
  String get donation => 'Bağış';
  @override
  String get open_on_game => 'Oyun ekranına aç';
  @override
  String get show_windows => 'Pencereleri göster';
  @override
  String get select_language => 'Dil Seç';
  @override
  String get switch_control => 'Değiştir: Bayrak ve Açık';
  @override
  String get switch_control_desc =>
      'Bayrak ile Açık arasında geçiş yapmak için butonu kullanınız';
  @override
  String get app_description =>
      'Hiçbirini patlatmadan gizli mayın içeren dikdörtgen bir tahtayı temizlemelisiniz.';
  @override
  String get app_name => 'Anti-Mine';
  @override
  String get do_you_know_how_to_play =>
      'Mayın Tarlası\'nı nasıl oynayacağını bilmiyor musunuz?';
  @override
  String get close => 'Kapat';
  @override
  String get open_tutorial => 'Öğreticiyi aç';
  @override
  String get click_numbers => 'Sayılara dokunmaya izin ver';
  @override
  String get flag_when_tap_numbers => 'Sayılara dokununca bayrak koyma';
  @override
  String get tap_to_customize => 'Özelleştirmek için tıkla';
  @override
  String get no_guess_fail_warning =>
      'Mevcut mayın tarlası tahmin edilemez olmayabilir!';
  @override
  String get fixed_size => 'Sabit Boyut';
  @override
  String get progressive => 'İlerleme';
  @override
  String get value_limit_min => 'En az %d';
  @override
  String get value_limit_max => 'En çok %d';
  @override
  String get proportion_too_high => 'Orantı çok yüksek!';
  @override
  String get highlight_unsolved_numbers => 'Çözülmemiş sayıları vurgula';
  @override
  String get show_clock => 'Saati göster';
  @override
  String get donate_request =>
      'Eğer oyunu beğendiyseniz, bağış yapmayı unutmayın.';
  @override
  String get donate_help => 'Projeyi ayakta tutmamıza yardımcı olacaktır!';
  @override
  String get acra_toast_text =>
      'Üzgünüz, bir hata oluştu. Lütfen sorun hakkında geliştiricilere bir rapor gönderin.';
  @override
  String get immersive_mode => 'Sürükleyici Mod';
  @override
  String get background_color => 'Arkaplan rengi';
  @override
  String get main_color => 'Ana renk';
  @override
  String get premium_exclusive => 'Premium\'a özel!';
  @override
  String get preview => 'Ön İzleme';
  @override
  String get shared_game => 'Paylaşılan oyun';
  @override
  String get shared_game_description =>
      'Seninle paylaşılan minesweeper oyun kodunu buraya yaz.';
  @override
  String get code => 'Kod';
  @override
  String get image => 'Resim';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Satın alımları geri yükle';
}
