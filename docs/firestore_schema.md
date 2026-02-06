# Firestore Şema (MVP)

```
users/{uid}
- role: driver|employer|admin
- name, phone, photoUrl
- companyName (employer)
- createdAt
- membershipPlan: free|premium|platin
- membershipUntil (timestamp)

driver_profiles/{uid}
- plateDefault, vehicleIds[]
- serviceRegions[]
- minPrice
- gpsPriorityEnabled (bool)
- filters: {fromRegions[], toRegions[], afterHour, beforeHour, minPrice, vehicleTypes[], vipFeatures[]}
- isAvailable (bool)
- ratingAvg, ratingCount

vehicles/{vehicleId}
- plate, type, capacity, features[]
- driverId
- insuranceStart, insuranceEnd

jobs/{jobId}
- createdBy (employer uid)
- createdAt, scheduledAt
- from: {title, address, lat, lng, regionTag}
- to: {title, address, lat, lng, regionTag}
- price
- vehicleTypeRequired
- vipFeaturesRequired[]
- passenger: {name, phone, paxCount, bagCount}
- status: PUBLISHED|RESERVED|ASSIGNED|ON_THE_WAY|PASSENGER_PICKED|COMPLETED|CANCELLED|EXPIRED
- reservedByDriverId (nullable)
- assignedDriverId (nullable)
- assignedVehicleId (nullable)
- responseDeadlineAt (timestamp)
- paymentStatus: UNPAID|PAID|PENDING
- rating: {stars, comment, byEmployerId, at} (optional)
- visibility:
  - preferredPlates[] (optional)
  - blockedPlates[] (optional)
  - minRating (optional)

job_events/{jobId}/events/{eventId}
- type, at, byUid, note

job_locations/{jobId}
- driverId, lat, lng, updatedAt

places/{placeId}
- name, region, address, phone, website, commissionPercent, photos[]

suppliers/{supplierId}
- category, name, discount, phone, address, location, notes
```

## Atomik “İlk Alan Alır” Kuralı (İş Reserve)
- Driver “İŞİ AL” basınca Firestore transaction:
  - Eğer `job.status == PUBLISHED` ve `now < responseDeadlineAt`:
    - `status = RESERVED`
    - `reservedByDriverId = auth.uid`
  - Değilse hata: “İş başkası tarafından alındı / süre doldu”

