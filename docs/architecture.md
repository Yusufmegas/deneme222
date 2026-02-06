# MVP Mimari Planı

## Kısa Mimari Plan
- **Uygulama katmanı:** Flutter + Riverpod ile feature-based modüler yapı.
- **Backend:** Firebase Auth (Phone OTP), Firestore, Storage (araç görselleri), FCM bildirimleri.
- **Bildirim akışı:** İş yayınlanınca filtrelere uyan araçlara FCM; ilk alan için Firestore transaction.
- **Durum yönetimi:** Riverpod (auth, role, job streams, filters).
- **Roller:** Araç/Şoför, İşveren/Acenta, Yönetici.

## Ekran Haritası
### Onboarding
- Login → SMS Kod → Hesabınızı Seçin → Profil Tamamlama (Araç/Şoför veya İşveren).

### Araç/Şoför
- Ana Sayfa (Müsait toggle, aktif iş kartı, kazançlar)
- Yeni İş Bildirimi
- Aktif İş Detayı
- İşi Tamamla & Puanla
- Bildirim Filtreleri
- Raporlar
- Ayarlar
- Premium Üyelik
- Mekanlar

### İşveren/Acenta
- İşler (aktif/tamamlanan/iptal)
- Araçlar (liste, detay, yeni ekle)
- İş Girişi
- Raporlar
- Ayarlar
- Premium Üyelik
- Acentalar listesi

### Yönetici
- İşler
- Araçlar
- Acentalar/İşverenler
- Raporlar/Ayarlar

## Modüler Feature Yapısı (Öneri)
- `features/auth`: login, otp, role select
- `features/profile`: driver/employer profil tamamlama
- `features/driver`: home, job notification, job detail, completion
- `features/employer`: home, vehicles, vehicle detail/add
- `features/job`: job form, job status
- `features/reports`: rapor ekranları
- `features/settings`: ayarlar
- `features/premium`: premium üyelik
- `features/places`: mekanlar

