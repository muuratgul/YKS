# 🚀 Backend Başlatma Rehberi

## ⚠️ SORUN: Backend çalışmıyor!

Frontend çalışıyor ama backend'e bağlanamıyor. Backend'i başlatmanız gerekiyor.

## ✅ ÇÖZÜM: 3 Kolay Yöntem

### Yöntem 1: START_BACKEND.bat (EN KOLAY) ⭐

1. Windows Explorer'da `yks-backend` klasörüne gidin
2. `START_BACKEND.bat` dosyasına **çift tıklayın**
3. Backend otomatik başlayacak!

**Başarı mesajı:**
```
🚀 Backend server is running on http://localhost:3000
📡 API endpoint: http://localhost:3000/api
```

### Yöntem 2: START_BOTH.bat (Backend + Frontend)

1. Ana klasörde `START_BOTH.bat` dosyasına **çift tıklayın**
2. Hem backend hem frontend başlayacak!

### Yöntem 3: Manuel Başlatma

1. **Yeni bir Command Prompt** penceresi açın
   - Windows tuşu + R
   - `cmd` yazın ve Enter

2. Şu komutları sırayla çalıştırın:
```cmd
cd "C:\Users\muura\Yeni klasör\yks-backend"
npm run dev
```

## ✅ Başarı Kontrolü

Backend başladıktan sonra:

1. **Tarayıcıda şu adresi açın:**
   - http://localhost:3000/api/health

2. **Şu mesajı görmelisiniz:**
```json
{"status":"ok","message":"Backend is running"}
```

3. **Frontend'deki uyarı kaybolmalı!**

## 🔍 Sorun Giderme

### Port 3000 zaten kullanılıyor

```cmd
# Port'u kullanan process'i bul
netstat -ano | findstr :3000

# Process'i durdur (PID'yi yukarıdaki komuttan al)
taskkill /PID <PID> /F
```

### Backend başlamıyor

1. Node.js yüklü mü?
   ```cmd
   node --version
   ```
   Eğer hata veriyorsa Node.js'i yükleyin: https://nodejs.org

2. npm yüklü mü?
   ```cmd
   npm --version
   ```

3. Bağımlılıklar yüklü mü?
   ```cmd
   cd "C:\Users\muura\Yeni klasör\yks-backend"
   npm install
   ```

### Backend başladı ama hala bağlanamıyor

1. Firewall kontrolü:
   - Windows Defender Firewall'u kontrol edin
   - Port 3000'e izin verin

2. Antivirus kontrolü:
   - Antivirus yazılımınız backend'i engelliyor olabilir

3. Tarayıcı cache:
   - Ctrl + Shift + R ile hard refresh yapın

## 📋 Hızlı Checklist

- [ ] Backend klasörü var mı? (`yks-backend`)
- [ ] `START_BACKEND.bat` dosyası var mı?
- [ ] Node.js yüklü mü?
- [ ] Backend başlatıldı mı?
- [ ] http://localhost:3000/api/health çalışıyor mu?
- [ ] Frontend'deki uyarı kayboldu mu?

## 🎯 Sonuç

Backend'i başlattıktan sonra:
- ✅ Frontend'deki uyarı kaybolacak
- ✅ Login sayfası çalışacak
- ✅ Demo hesap butonu çalışacak
- ✅ Tüm API istekleri çalışacak

**Backend'i başlatın ve sistemi kullanmaya başlayın!** 🚀

