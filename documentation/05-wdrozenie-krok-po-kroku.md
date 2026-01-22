# ⚙️ Wdrożenie krok po kroku

## 1. Tworzenie maszyn wirtualnych
- PROD-DC01 → produkcja.local  
- EXT-DC01 → external.local  
- ERP-SRV01 → aplikacje ERP

## 2. Instalacja AD DS
- Na obu DC: Server Manager → Add Roles → Promote to Domain Controller  
- Nazwy lasów: produkcja.local i external.local

## 3. Konfiguracja DNS
- Conditional Forwarders: wzajemne rozpoznawanie FQDN  
- Testy: Resolve-DnsName

## 4. Tworzenie trustu
- Active Directory Domains and Trusts → New Trust  
- Typ: Forest trust  
- Kierunek: One-way incoming  
- Walidacja trustu

## 5. Uprawnienia
- Grupy w produkcja.local: ERP_ReadAccess, ERP_Admins  
- Dodanie użytkowników external.local do grup  
- Test logowania do ERP-SRV01

## 6. Testy końcowe
- Uwierzytelnienie Kerberos  
- Dostęp do zasobów ERP  
- Walidacja DNS i SID History

