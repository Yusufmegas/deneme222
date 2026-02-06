# Araç Yönetim Platformu / VIP Transfer İş Dağıtım (MVP)

Bu repo, Flutter + Firebase tabanlı “Araç Yönetim Platformu / VIP Transfer İş Dağıtım” MVP taslağını içerir.

## 1) Kısa Mimari Plan + Ekran Haritası
Detaylı plan için: `docs/architecture.md`

## 2) Firestore Şema + Rules Taslağı
- Şema: `docs/firestore_schema.md`
- Rules: `firebase/firestore.rules`
- Seed data örneği: `docs/seed_data.json`

## 3) Flutter Kodları (MVP UI)
- Flutter başlangıcı: `lib/main.dart`
- UI bileşenleri: `lib/widgets/*`
- Feature tabanlı ekranlar: `lib/features/*`

## 4) Firebase Kurulum (Özet)
1. Firebase Console’dan bir proje oluşturun.
2. Android/iOS uygulamalarını ekleyin.
3. `google-services.json` ve `GoogleService-Info.plist` dosyalarını Flutter projesine ekleyin.
4. Auth: Phone OTP’yi etkinleştirin.
5. Firestore + Storage + FCM’i etkinleştirin.
6. Rules: `firebase/firestore.rules` içeriğini proje rules’larına taşıyın.

## 5) Maps Key Placeholder
- Android: `android/app/src/main/AndroidManifest.xml`
- iOS: `ios/Runner/AppDelegate.swift`

## 6) Build Adımları
```bash
flutter pub get
flutter run
```

## 7) Notlar
- Payment MVP’de placeholder; üyelik Firestore flag ile yönetilir.
- Atomik iş reserve işlemi için Firestore transaction kullanılmalıdır.

