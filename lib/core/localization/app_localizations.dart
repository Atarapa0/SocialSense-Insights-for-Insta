import 'package:flutter/material.dart';

/// Desteklenen diller
enum AppLanguage {
  turkish('tr', 'Türkçe'),
  english('en', 'English');

  final String code;
  final String name;
  const AppLanguage(this.code, this.name);
}

/// Uygulama çevirileri
/// Türkçe ve İngilizce dil desteği
class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'tr': _turkishStrings,
    'en': _englishStrings,
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }

  // ==========================================
  // TÜRKÇE
  // ==========================================
  static const Map<String, String> _turkishStrings = {
    // Genel
    'app_name': 'SocialSense',
    'app_slogan': 'Instagram İstatistiklerinizi Keşfedin',

    // Karşılama ekranı
    'welcome_title': 'Hoş Geldiniz',
    'welcome_subtitle':
        'Instagram verilerinizi analiz edin ve istatistiklerinizi görün',
    'get_started': 'Başlayın',

    // Tutorial
    'tutorial': 'TUTORIAL',
    'skip': 'Atla',
    'next_step': 'Sonraki Adım',
    'previous_step': 'Önceki Adım',

    // Tutorial Adım 1
    'tutorial_step1_title': 'Ayarlar > Hesaplar Merkezi',
    'tutorial_step1_desc':
        'Instagram Ayarlarına gidin > Hesaplar Merkezi > Bilgilerin ve izinlerin > Bilgilerini dışa aktar sayfasına tıklayın.',
    'tutorial_step1_highlight': 'Bilgilerini Dışa Aktar',

    // Tutorial Adım 2
    'tutorial_step2_title': 'Dışa Aktarım Oluşturun',
    'tutorial_step2_desc':
        '"Dışa aktarım oluştur" seçeneğine dokunun ve ardından "Cihaza aktar" seçeneğini seçin.',
    'tutorial_step2_highlight': 'Cihaza aktar',

    // Tutorial Adım 3
    'tutorial_step3_title': 'Format ve Aralık Seçimi',
    'tutorial_step3_desc':
        'Açılan sayfada:\n• Tüm mevcut bilgiler\n• Tarih aralığı: Her zaman\n• Format: JSON (ÖNEMLİ)',
    'tutorial_step3_highlight': 'JSON FORMATI ÖNEMLİ',

    // Tutorial Adım 4
    'tutorial_step4_title': 'İndir ve Yükle',
    'tutorial_step4_desc':
        'Instagram dosyanızı hazırladığında (e-posta ile bildirir), dosyayı indirin ve bu uygulamaya yükleyin.',
    'tutorial_step4_highlight': 'ZIP dosyasını yükleyin',

    // Veri yükleme
    'upload_title': 'Instagram Verilerinizi Yükleyin',
    'upload_description': 'Instagram\'dan indirdiğiniz ZIP dosyasını seçin',
    'select_zip_file': 'ZIP Dosyası Seç',
    'how_to_download': 'Nasıl indirilir?',
    'processing': 'İşleniyor...',
    'upload_success': 'Veriler başarıyla yüklendi!',
    'upload_error': 'Veri yüklenirken hata oluştu',
    'secure_upload': 'Güvenli Yükleme',
    'upload_zip_now': 'ZIP\'i Yükle',
    'drag_drop_or_tap': 'Sürükle bırak veya tıkla',
    'secure_environment': 'GÜVENLİ ORTAM',
    'local_processing_title': 'Sadece Yerel İşleme - Sunucuya Yükleme Yok',
    'local_processing_desc': 'Verileriniz asla cihazınızdan çıkmaz.',
    'supported_formats': 'Desteklenen formatlar: .zip, .rar, .7z',
    'select_file': 'Dosya Seç',
    'error_html_format':
        'Instagram verileriniz HTML formatında indirilmiş. Lütfen JSON formatında indirin.',
    'error_invalid_zip':
        'Bu ZIP dosyası Instagram verisi içermiyor. Lütfen doğru dosyayı seçin.',
    'error_generic': 'Bir hata oluştu. Lütfen tekrar deneyin.',
    'upload_your_data': 'Verilerini Yükle',
    'upload_disclaimer':
        'Dosya yükleyerek Gizlilik Politikası ve Kullanım Koşullarını kabul etmiş sayılırsınız.',

    // Dashboard
    'good_morning': 'Günaydın',
    'good_afternoon': 'İyi Günler',
    'good_evening': 'İyi Akşamlar',
    'dashboard': 'Panel',
    'home': 'Ana Sayfa',
    'reports': 'Raporlar',
    'alerts': 'Uyarılar',
    'settings': 'Ayarlar',

    // İstatistikler
    'high_priority': 'Yüksek Öncelik',
    'unfollowers': 'Seni Geri Takip Etmeyenler',
    'unfollowers_desc': 'Takip ettiğin %count kişi seni geri takip etmiyor.',
    'analyze_drop': 'Analiz Et',
    'ghost_followers': 'Hayalet Takipçiler',
    'inactive': 'İNAKTİF',
    'ghosts': 'Hayaletler',
    'active': 'Aktif',
    'activity_hours': 'Aktivite Saatleri',
    'peak_time': 'Zirve saati',
    'engagement_rate': 'Etkileşim Oranı',
    'total_reach': 'Toplam Erişim',
    'weekly_report': 'Haftalık Rapor',
    'ready_for_download': 'İndirmeye hazır',

    // Genel istatistikler
    'followers': 'Takipçiler',
    'following': 'Takip Edilenler',
    'posts': 'Gönderiler',
    'likes': 'Beğeniler',
    'comments': 'Yorumlar',
    'stories': 'Hikayeler',
    'messages': 'Mesajlar',

    // Analiz
    'analysis': 'Analiz',
    'top_interactions': 'En Çok Etkileşim',
    'activity_history': 'Aktivite Geçmişi',
    'monthly_stats': 'Aylık İstatistikler',
    'top_fans': 'En Sadık Takipçiler',
    'view_all': 'Tümünü Gör',
    'active_hour': 'AKTİF SAAT',
    'new_unfollowers': 'Yeni Takipten Çıkanlar',
    'since_yesterday': 'Dünden beri',
    'this_week': 'bu hafta',
    'urgent': 'ACİL',
    'activity_timeline': 'Aktivite Zaman Çizelgesi',
    'like_activity': 'Beğeni Aktivitesi',
    'comment_activity': 'Yorum Aktivitesi',
    'last_90_days': 'Son 90 gün',

    // Aktivite saati lakapları
    'early_bird': '🌅 Erken Kalkan Kuş',
    'morning_person': 'Sabah İnsanı',
    'lunch_break_scroller': 'Öğle Arası Gezgini',
    'afternoon_explorer': 'Öğleden Sonra Kaşifi',
    'evening_browser': 'Akşam Gezgini',
    'night_owl': '🦉 Gece Kuşu',
    'midnight_explorer': 'Gece Yarısı Kaşifi',

    // Analiz sayfası
    'unfollowers_this_week': 'Seni Geri Takip Etmeyen Kişiler',
    'drop_rate': 'Düşüş Oranı',
    'worst_day': 'En Kötü Gün',
    'daily_distribution': 'Günlük Dağılım',
    'recent_unfollowers': 'Geri Takip Etmeyenler',
    'total': 'toplam',
    'all_time': 'Tüm Zamanlar',

    // Güncelleme dialog
    'update_data_title': 'Verileri Güncelle',
    'update_data_message': 'Verilerinizi güncellemek mi istiyorsunuz?',
    'yes': 'Evet',
    'no': 'Hayır',
    'last_update': 'Son güncelleme',

    // Ayarlar
    'delete_data': 'Verileri Sil',
    'about': 'Hakkında',
    'version': 'Versiyon',
    'language': 'Dil',
    'theme': 'Tema',
    'dark_mode': 'Karanlık Mod',
    'light_mode': 'Açık Mod',
    'appearance': 'Görünüm',
    'data_management': 'Veri Yönetimi',
    'reload_data': 'Veriyi Yeniden Yükle',
    'clear_cache': 'Önbelleği Temizle',
    'default_view': 'Varsayılan Görünüm',
    'help': 'Yardım',
    'faq': 'Sıkça Sorulan Sorular',
    'contact': 'İletişim',
    'privacy_policy': 'Gizlilik Politikası',
    'terms_of_use': 'Kullanım Koşulları',
    'rate_app': 'Uygulamayı Değerlendir',
    'share_app': 'Uygulamayı Paylaş',
    'turkish': 'Türkçe',
    'english': 'English',
    'system_default': 'Sistem Varsayılanı',
    'confirm_delete': 'Silmek istediğinize emin misiniz?',
    'data_deleted': 'Veriler silindi',
    'cache_cleared': 'Önbellek temizlendi',

    // Uyarılar
    'no_alerts': 'Henüz uyarı yok',
    'no_alerts_desc':
        'Hesabınızda önemli değişiklikler olduğunda burada göreceksiniz',
    'follower_drop_alert': 'Takipçi Düşüşü',
    'follower_drop_desc': 'Son 7 günde takipçi kaybettiniz',
    'ghost_follower_alert': 'Hayalet Takipçi Uyarısı',
    'ghost_follower_desc': 'Hayalet takipçi oranınız yüksek',
    'engagement_drop_alert': 'Etkileşim Düşüşü',
    'engagement_drop_desc': 'Etkileşim oranınız düştü',
    'active_hour_changed': 'Aktif Saat Değişti',
    'active_hour_changed_desc': 'Takipçileriniz artık farklı saatlerde aktif',
    'new_unfollowers_alert': 'Yeni Takipten Çıkanlar',
    'new_unfollowers_desc': 'kişi sizi takipten çıktı',
    'tip_alert': 'İpucu',
    'tip_post_time': 'Paylaşım saatinizi değiştirmeyi deneyin',
    'tip_engagement': 'Hikaye paylaşarak etkileşimi artırın',
    'mark_as_read': 'Okundu İşaretle',
    'clear_all': 'Tümünü Temizle',
    'today': 'Bugün',
    'yesterday': 'Dün',
    'this_week_alerts': 'Bu Hafta',

    // Hatalar
    'error_general': 'Bir hata oluştu',
    'error_invalid_file': 'Geçersiz dosya formatı',
    'error_no_data': 'Veri bulunamadı',
    'no_data_available': 'Veri yok',

    // Butonlar
    'btn_continue': 'Devam Et',
    'btn_cancel': 'İptal',
    'btn_retry': 'Tekrar Dene',
    'btn_close': 'Kapat',

    // Günler
    'mon': 'Pzt',
    'tue': 'Sal',
    'wed': 'Çar',
    'thu': 'Per',
    'fri': 'Cum',
    'sat': 'Cmt',
    'sun': 'Paz',
    'chats': 'sohbet',
    'direct_messages': 'Direkt Mesajlar',
    'reels_interactions': 'Reels Etkileşimleri',
    'sent_by_you': 'Senin Attıkların',
    'received_by_you': 'Sana Gelenler',
    'total_sent': 'Toplam Giden',
    'total_received': 'Toplam Gelen',
    'no_data': 'Veri yok',
    'see_all': 'Tümü',
    'pending_follow_requests_title': 'Bekleyen Takip İstekleri',
    'pending_follow_requests_desc': 'kişi takip isteğinizi henüz kabul etmedi',
    'most_messaged_sent': 'En Çok Mesaj Attıkların',
    'most_messaged_received': 'Sana En Çok Mesaj Atanlar',
    'most_reels_sent': 'En Çok Reels Gönderdiklerin',
    'most_reels_received': 'Sana En Çok Reels Gönderenler',
    'reels_stats_subtitle': 'Reels paylaşım istatistikleri',

    // İletişim & Yardım
    'get_in_touch': 'İletişime Geçin',
    'contact_desc':
        'Sorularınız veya geri bildirimleriniz varsa lütfen bize mesaj gönderin.',
    'email': 'E-posta',
    'website': 'Web sitesi',
    'instagram': 'Instagram',

    // SSS (FAQ)
    'faq_q1': 'Verilerim güvende mi?',
    'faq_a1':
        'Evet, SocialSense verilerinizi sadece cihazınızda yerel olarak işler. Hiçbir veriniz sunucularımıza yüklenmez veya üçüncü taraflarla paylaşılmaz.',
    'faq_q2': 'Verilerimi nasıl yüklerim?',
    'faq_a2':
        'Instagram ayarlarından "Bilgilerini İndir" seçeneği ile verilerinizi JSON formatında indirin, ardından uygulamanın "Veri Yükle" bölümünden ZIP dosyasını seçin.',
    'faq_q3': 'Hayalet Takipçi nedir?',
    'faq_a3':
        'Sizi takip eden ancak gönderilerinizi beğenmeyen veya yorum yapmayan kullanıcılardır.',
    'faq_q4': 'Analizler ne kadar güvenilir?',
    'faq_a4':
        'Instagram’dan indirdiğiniz veri arşivinde bulunan bilgileri işleyerek anlaşılır şekilde size gösteriyoruz. Sonuçlar, arşivde yer alan verilerle sınırlıdır.',
    'faq_q5': 'Uygulama ücretli mi?',
    'faq_a5': 'Şu anda tamamen ücretsizdir.',

    // Dashboard - Genel Bakış
    'overview': 'Genel Bakış',
    'total_likes': 'Toplam Beğeni',
    'total_comments': 'Toplam Yorum',
    'follower': 'Takipçi',
    'followed': 'Takip Edilen',

    // Raporlar - Detaylı İstatistikler
    'mutual_followers': 'Karşılıklı Takipçiler',
    'not_following_back': 'Seni Takip Etmeyenler',
    'you_dont_follow_back': 'Sen Takip Etmiyorsun',
    'interests_summary': 'İlgi Alanları Özeti',
    'saved_content_summary': 'Kayıtlı İçerik Özeti',
    'activity_profile': 'Aktivite Profili',
    'time_distribution': 'Zaman Dağılımı',
    'weekday_weekend': 'Hafta İçi/Hafta Sonu',
    'interests_detail': 'İlgi Alanları Detayı',
    'categories': 'Kategoriler',
    'saved_accounts': 'Kayıtlı Hesaplar',
    'story_likes': 'Hikaye Beğenileri',
    'follower_details': 'Takipçi Detayları',
    'most_liked_accounts': 'En Çok Beğendiğin Hesaplar',
    'most_commented_accounts': 'En Çok Yorum Yaptığın Hesaplar',

    // Sayfa başlıkları ve diğer metinler
    'mutual_follow': 'Karşılıklı Takipler',
    'not_following_you': 'Seni Takip Etmeyenler',
    'you_dont_follow': 'Takip Etmediklerin',
    'most_liked': 'En Çok Beğenenler',
    'most_commented': 'En Çok Yorum Yapanlar',
    'unread': 'okunmamış',
    'close_friends': 'Yakın Arkadaşlar',
    'pending_requests': 'Bekleyen İstekler',

    // Zaman ve aktivite
    'time_dist': 'Zaman Dağılımı',
    'morning_time': 'Sabah (06-12)',
    'afternoon_time': 'Öğle (12-18)',
    'evening_time': 'Akşam (18-24)',
    'night_time': 'Gece (00-06)',
    'weekly_dist': 'Haftalık Dağılım',
    'weekdays': 'Hafta İçi',
    'weekends': 'Hafta Sonu',

    // Widget başlıkları
    'account_analysis': 'Hesap Analizleri',
    'follower_status': 'Takipçi Detayları',
    'mutual_short': 'Karşılıklı',
    'not_following_short': 'Geri Takip Etmiyor',
    'interests': 'İlgi Alanı',
    'saved_content': 'Kayıtlı İçerik',
    'view_all_btn': 'Tümü Gör',
    'show_less': 'Daha Az Göster',

    // Kart başlıkları (kısaltılmış)
    'most_liked_short': 'En Çok\nBeğendiğin H...',
    'most_commented_short': 'En Çok Yorum\nYaptığın Hesa...',
    'mutual_followers_short': 'Karşılıklı\nTakipler',
    'not_following_back_short': 'Geri Takip\nEtmediklerin',
    'not_following_you_short': 'Seni Geri Takip\nEtmeyenler',

    // Açıklamalar
    'people_not_following_back':
        'Takip ettiğin %count kişi seni geri takip etmiyor.',
    'no_received_requests': 'Gelen takip isteği yok.',
    'no_sent_requests': 'Bekleyen gönderilen istek yok.',
    'accounts': 'hesap',

    // Raporlar detay widget'ları
    'saved_items': 'Kayıtlı İçerikler',
    'most_saved_accounts': 'En Çok Kaydettiğin Hesaplar',
    'view_all_with_count': 'Tümünü Gör (+%count)',
    'sent': 'Gönderilen',
    'received': 'Gelen',
    'people_added': '%count kişi ekli',
    'most_story_likers': 'En Çok Hikaye Beğenenler',
    'most_story_reactions': 'Hikayelerine en çok tepki verenler',
    'interests_categories': 'İlgi Alanları (%count Kategori)',
    'category': 'Kategori',
    'interests_short_title': 'İlgi Alanları',
    'more': 'daha fazla',
    'saved_content_short': 'Kayıtlı İçerikler',
    'more_accounts': 'hesap daha',
    'everyone_follows_back': 'Herkes seni geri takip ediyor!',
    'interests_title': 'İlgi Alanların',

    // Kategori isimleri
    'travel': 'Seyahat',
    'other': 'Diğer',
    'sports': 'Spor',
    'food_drink': 'Yemek & İçecek',
    'gaming_tech': 'Oyun & Teknoloji',
    'fashion_beauty': 'Moda & Güzellik',
    'animals': 'Hayvanlar',
    'art_entertainment': 'Sanat & Eğlence',

    // Zaman formatları
    'now': 'Şimdi',
    'minutes_ago': '%count dk önce',
    'hours_ago': '%count saat önce',
    'days_ago': '%count gün önce',
  };

  // ==========================================
  // ENGLISH
  // ==========================================
  static const Map<String, String> _englishStrings = {
    // General
    'app_name': 'SocialSense',
    'app_slogan': 'Discover Your Instagram Insights',

    // Welcome screen
    'welcome_title': 'Welcome',
    'welcome_subtitle': 'Analyze your Instagram data and view your statistics',
    'get_started': 'Get Started',

    // Tutorial
    'tutorial': 'TUTORIAL',
    'skip': 'Skip',
    'next_step': 'Next Step',
    'previous_step': 'Previous Step',

    // Tutorial Step 1
    'tutorial_step1_title': 'Settings > Accounts Center',
    'tutorial_step1_desc':
        'Go to Settings > Accounts Center > Your Information and Permissions > Export your information.',
    'tutorial_step1_highlight': 'Export Your Information',

    // Tutorial Step 2
    'tutorial_step2_title': 'Create & Transfer',
    'tutorial_step2_desc':
        'Tap "Create export", then select "Export to device".',
    'tutorial_step2_highlight': 'Export to Device',

    // Tutorial Step 3
    'tutorial_step3_title': 'Select Format & Range',
    'tutorial_step3_desc':
        'On the next page:\n• All available information\n• Date range: All time\n• Format: JSON (IMPORTANT)',
    'tutorial_step3_highlight': 'JSON FORMAT IS IMPORTANT',

    // Tutorial Step 4
    'tutorial_step4_title': 'Download & Upload',
    'tutorial_step4_desc':
        'When Instagram notifies you (via email), download the file and upload it to this app.',
    'tutorial_step4_highlight': 'Upload ZIP File',

    // Data upload
    'upload_title': 'Upload Your Instagram Data',
    'upload_description': 'Select the ZIP file you downloaded from Instagram',
    'select_zip_file': 'Select ZIP File',
    'how_to_download': 'How to download?',
    'processing': 'Processing...',
    'upload_success': 'Data uploaded successfully!',
    'upload_error': 'Error uploading data',
    'secure_upload': 'Secure Upload',
    'upload_zip_now': 'Upload ZIP',
    'drag_drop_or_tap': 'Drag & drop or tap',
    'secure_environment': 'SECURE ENVIRONMENT',
    'local_processing_title': 'Local Processing Only - No Server Upload',
    'local_processing_desc': 'Your data never leaves this device.',
    'supported_formats': 'Supported formats: .zip, .rar, .7z',
    'select_file': 'Select File',
    'error_html_format':
        'Your Instagram data was downloaded in HTML format. Please download in JSON format.',
    'error_invalid_zip':
        'This ZIP file does not contain Instagram data. Please select the correct file.',
    'error_generic': 'An error occurred. Please try again.',
    'upload_your_data': 'Upload Your Data',
    'upload_disclaimer':
        'By uploading, you agree to our Privacy Policy and Terms of Use.',

    // Dashboard
    'good_morning': 'Good Morning',
    'good_afternoon': 'Good Afternoon',
    'good_evening': 'Good Evening',
    'dashboard': 'Dashboard',
    'home': 'Home',
    'reports': 'Reports',
    'alerts': 'Alerts',
    'settings': 'Settings',

    // Statistics
    'high_priority': 'High Priority',
    'unfollowers': 'Not Following Back',
    'unfollowers_desc': '%count people you follow are not following you back.',
    'analyze_drop': 'Analyze',
    'ghost_followers': 'Ghost Followers',
    'inactive': 'INACTIVE',
    'ghosts': 'Ghosts',
    'active': 'Active',
    'activity_hours': 'Activity Hours',
    'peak_time': 'Peak time',
    'engagement_rate': 'Engagement Rate',
    'total_reach': 'Total Reach',
    'weekly_report': 'Weekly Report',
    'ready_for_download': 'Ready for download',

    // General statistics
    'followers': 'Followers',
    'following': 'Following',
    'posts': 'Posts',
    'likes': 'Likes',
    'comments': 'Comments',
    'stories': 'Stories',
    'messages': 'Messages',

    // Analysis
    'analysis': 'Analysis',
    'top_interactions': 'Top Interactions',
    'activity_history': 'Activity History',
    'monthly_stats': 'Monthly Statistics',
    'top_fans': 'Top 3 Fans',
    'view_all': 'View All',
    'active_hour': 'ACTIVE HOUR',
    'new_unfollowers': 'New Unfollowers',
    'since_yesterday': 'Since yesterday',
    'this_week': 'this week',
    'urgent': 'URGENT',
    'activity_timeline': 'Activity Timeline',
    'like_activity': 'Like Activity',
    'comment_activity': 'Comment Activity',
    'last_90_days': 'Last 90 days',

    // Activity hour nicknames
    'early_bird': '🌅 Early Bird',
    'morning_person': 'Morning Person',
    'lunch_break_scroller': 'Lunch Break Scroller',
    'afternoon_explorer': 'Afternoon Explorer',
    'evening_browser': 'Evening Browser',
    'night_owl': '🦉 Night Owl',
    'midnight_explorer': 'Midnight Explorer',

    // Analyze page
    'unfollowers_this_week': 'People Not Following You Back',
    'drop_rate': 'Drop Rate',
    'worst_day': 'Worst Day',
    'daily_distribution': 'Daily Distribution',
    'recent_unfollowers': 'Not Following Back',
    'total': 'total',
    'all_time': 'All Time',

    // Update dialog
    'update_data_title': 'Update Data',
    'update_data_message': 'Do you want to update your data?',
    'yes': 'Yes',
    'no': 'No',
    'last_update': 'Last update',

    // Settings
    'delete_data': 'Delete Data',
    'about': 'About',
    'version': 'Version',
    'language': 'Language',
    'theme': 'Theme',
    'dark_mode': 'Dark Mode',
    'light_mode': 'Light Mode',
    'appearance': 'Appearance',
    'data_management': 'Data Management',
    'reload_data': 'Reload Data',
    'clear_cache': 'Clear Cache',
    'default_view': 'Default View',
    'help': 'Help',
    'faq': 'FAQ',
    'contact': 'Contact',
    'privacy_policy': 'Privacy Policy',
    'terms_of_use': 'Terms of Use',
    'rate_app': 'Rate App',
    'share_app': 'Share App',
    'turkish': 'Türkçe',
    'english': 'English',
    'system_default': 'System Default',
    'confirm_delete': 'Are you sure you want to delete?',
    'data_deleted': 'Data deleted',
    'cache_cleared': 'Cache cleared',

    // Alerts
    'no_alerts': 'No alerts yet',
    'no_alerts_desc': 'You will see important changes to your account here',
    'follower_drop_alert': 'Follower Drop',
    'follower_drop_desc': 'You lost followers in the last 7 days',
    'ghost_follower_alert': 'Ghost Follower Alert',
    'ghost_follower_desc': 'Your ghost follower rate is high',
    'engagement_drop_alert': 'Engagement Drop',
    'engagement_drop_desc': 'Your engagement rate has dropped',
    'active_hour_changed': 'Active Hour Changed',
    'active_hour_changed_desc':
        'Your followers are now active at different times',
    'new_unfollowers_alert': 'New Unfollowers',
    'new_unfollowers_desc': 'people unfollowed you',
    'tip_alert': 'Tip',
    'tip_post_time': 'Try changing your posting time',
    'tip_engagement': 'Increase engagement by sharing stories',
    'mark_as_read': 'Mark as Read',
    'clear_all': 'Clear All',
    'today': 'Today',
    'yesterday': 'Yesterday',
    'this_week_alerts': 'This Week',

    // Errors
    'error_general': 'An error occurred',
    'error_invalid_file': 'Invalid file format',
    'error_no_data': 'No data found',
    'no_data_available':
        'No data available. Please upload your Instagram data first.',

    // Buttons
    'btn_continue': 'Continue',
    'btn_cancel': 'Cancel',
    'btn_retry': 'Retry',
    'btn_close': 'Close',

    // Days
    'mon': 'Mon',
    'tue': 'Tue',
    'wed': 'Wed',
    'thu': 'Thu',
    'fri': 'Fri',
    'sat': 'Sat',
    'sun': 'Sun',
    'chats': 'chats',
    'direct_messages': 'Direct Messages',
    'reels_interactions': 'Reels Interactions',
    'sent_by_you': 'Sent by You',
    'received_by_you': 'Received by You',
    'total_sent': 'Total Sent',
    'total_received': 'Total Received',
    'no_data': 'No data',
    'see_all': 'All',
    'pending_follow_requests_title': 'Pending Follow Requests',
    'pending_follow_requests_desc':
        'people haven\'t accepted your follow request yet',
    'most_messaged_sent': 'Most Messaged (Sent)',
    'most_messaged_received': 'Most Messaged (Received)',
    'most_reels_sent': 'Top Reels Sent',
    'most_reels_received': 'Top Reels Received',
    'reels_stats_subtitle': 'Reels sharing statistics',

    // Contact & Help
    'get_in_touch': 'Get in Touch',
    'contact_desc':
        'If you have any questions or feedback, please send us a message.',
    'email': 'Email',
    'website': 'Website',
    'instagram': 'Instagram',

    // FAQ
    'faq_q1': 'Is my data safe?',
    'faq_a1':
        'Yes, SocialSense processes your data locally on your device only. None of your data is uploaded to our servers or shared with third parties.',
    'faq_q2': 'How do I upload my data?',
    'faq_a2':
        'Download your data in JSON format from Instagram settings ("Download Your Information"), then select the ZIP file in the app\'s "Upload Data" section.',
    'faq_q3': 'What are Ghost Followers?',
    'faq_a3': 'Users who follow you but do not like or comment on your posts.',
    'faq_q4': 'How reliable is the analysis?',
    'faq_a4':
        'We process the information in the data archive you download from Instagram and present it to you in an understandable format. Results are limited to the data contained in the archive.',
    'faq_q5': 'Is the app free?',
    'faq_a5': 'It is currently completely free.',

    // Dashboard - Overview
    'overview': 'Overview',
    'total_likes': 'Total Likes',
    'total_comments': 'Total Comments',
    'follower': 'Followers',
    'followed': 'Following',

    // Reports - Detailed Statistics
    'mutual_followers': 'Mutual Followers',
    'not_following_back': 'Not Following You Back',
    'you_dont_follow_back': 'You Don\'t Follow Back',
    'interests_summary': 'Interests Summary',
    'saved_content_summary': 'Saved Content Summary',
    'activity_profile': 'Activity Profile',
    'time_distribution': 'Time Distribution',
    'weekday_weekend': 'Weekday/Weekend',
    'interests_detail': 'Interests Detail',
    'categories': 'Categories',
    'saved_accounts': 'Saved Accounts',
    'story_likes': 'Story Likes',
    'follower_details': 'Follower Details',
    'most_liked_accounts': 'Most Liked Accounts',
    'most_commented_accounts': 'Most Commented Accounts',

    // Page titles and other texts
    'mutual_follow': 'Mutual Followers',
    'not_following_you': 'Not Following You',
    'you_dont_follow': 'You Don\'t Follow',
    'most_liked': 'Most Liked',
    'most_commented': 'Most Commented',
    'unread': 'unread',
    'close_friends': 'Close Friends',
    'pending_requests': 'Pending Requests',

    // Time and activity
    'time_dist': 'Time Distribution',
    'morning_time': 'Morning (06-12)',
    'afternoon_time': 'Afternoon (12-18)',
    'evening_time': 'Evening (18-24)',
    'night_time': 'Night (00-06)',
    'weekly_dist': 'Weekly Distribution',
    'weekdays': 'Weekdays',
    'weekends': 'Weekends',

    // Widget titles
    'account_analysis': 'Account Analysis',
    'follower_status': 'Follower Status',
    'mutual_short': 'Mutual',
    'not_following_short': 'Not Following Back',
    'interests': 'Interests',
    'saved_content': 'Saved Content',
    'view_all_btn': 'View All',
    'show_less': 'Show Less',

    // Card titles (shortened)
    'most_liked_short': 'Most\nLiked Acc...',
    'most_commented_short': 'Most\nCommented Acc...',
    'mutual_followers_short': 'Mutual\nFollowers',
    'not_following_back_short': 'You Don\'t\nFollow Back',
    'not_following_you_short': 'Not Following\nYou Back',

    // Descriptions
    'people_not_following_back':
        '%count people you follow are not following you back.',
    'no_received_requests': 'No received follow requests.',
    'no_sent_requests': 'No pending sent requests.',
    'accounts': 'accounts',

    // Reports detail widgets
    'saved_items': 'Saved Content',
    'most_saved_accounts': 'Most Saved Accounts',
    'view_all_with_count': 'View All (+%count)',
    'sent': 'Sent',
    'received': 'Received',
    'people_added': '%count people added',
    'most_story_likers': 'Most Story Likers',
    'most_story_reactions': 'People who react to your stories most',
    'interests_categories': 'Interests (%count Categories)',
    'category': 'Category',
    'interests_short_title': 'Interests',
    'more': 'more',
    'saved_content_short': 'Saved Content',
    'more_accounts': 'more accounts',
    'everyone_follows_back': 'Everyone follows you back!',
    'interests_title': 'Your Interests',

    // Category names
    'travel': 'Travel',
    'other': 'Other',
    'sports': 'Sports',
    'food_drink': 'Food & Drink',
    'gaming_tech': 'Gaming & Technology',
    'fashion_beauty': 'Fashion & Beauty',
    'animals': 'Animals',
    'art_entertainment': 'Art & Entertainment',

    // Time formats
    'now': 'Now',
    'minutes_ago': '%count min ago',
    'hours_ago': '%count hr ago',
    'days_ago': '%count days ago',
  };
}

/// Localization Delegate
class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['tr', 'en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
