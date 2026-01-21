# 🔐 Integracja dwóch lasów Active Directory poprzez Resource Forest Trust – Comdes sp.j.

**Firma wdrażająca:** Comdes sp.j.  
**Rok realizacji:** 2019  
**Stanowisko:** Młodszy Administrator IT  
**Technologie:** Windows Server, Active Directory, DNS, Kerberos, Resource Forest Trust

## 🎯 Cel projektu
Celem wdrożenia było bezpieczne połączenie dwóch niezależnych lasów AD — produkcja.local oraz external.local — w sposób umożliwiający użytkownikom zewnętrznym dostęp do wybranych zasobów ERP, przy jednoczesnym zachowaniu pełnej izolacji i kontroli po stronie klienta produkcyjnego.

## 🔧 Problem techniczny
- Brak możliwości współdzielenia zasobów między lasami  
- Oddzielne schematy AD i brak wspólnego zaufania  
- Konieczność udostępnienia aplikacji ERP użytkownikom external.local  
- Wymóg zachowania autonomii i bezpieczeństwa środowiska produkcyjnego  

## 🧩 Zakres prac
- Utworzenie dwóch lasów AD: produkcja.local i external.local  
- Konfiguracja DNS z użyciem Conditional Forwarders  
- Utworzenie Resource Forest Trust (one‑way incoming)  
- Konfiguracja Kerberos i testy uwierzytelnienia  
- Nadanie uprawnień użytkownikom external.local do zasobów ERP  
- Walidacja trustu i testy logowania  


## 📁 Struktura repozytorium
- `/documentation/` — pełna dokumentacja projektu  
- `/infra/scripts/` — skrypty PowerShell automatyzujące konfigurację AD, DNS i trustu  
- `/screenshots/` — zrzuty ekranu z procesu wdrożenia  
- `/architecture/` — diagramy architektury i przepływu uwierzytelnienia  
- `/readme/` — pliki prezentacyjne repozytorium  

## ✅ Rezultaty
- Umożliwiono dostęp użytkowników external.local do aplikacji ERP  
- Zachowano pełną izolację lasów AD  
- Spełniono wymagania bezpieczeństwa i RODO  
- Uwierzytelnienie Kerberos działa poprawnie między lasami  
- Stworzono powtarzalny model wdrożenia dla innych klientów  

## 📘 Wnioski
Resource Forest Trust okazał się idealnym rozwiązaniem dla środowiska, które wymaga współdzielenia zasobów bez naruszania autonomii domen. Projekt zapewnił bezpieczeństwo, kontrolę i elastyczność, umożliwiając dalszą współpracę między firmami.

## 📄 Licencja
Projekt demonstracyjny — do celów edukacyjnych i portfolio.

# 🔐 Secure Integration of Two Active Directory Forests via Resource Forest Trust – Comdes sp.j.

**Implementing company:** Comdes sp.j.  
**Year:** 2019  
**Role:** Junior IT Administrator  
**Technologies:** Windows Server, Active Directory, DNS, Kerberos, Resource Forest Trust

## 🎯 Project Goal
The goal was to securely integrate two independent AD forests — production.local and external.local — enabling external users to access selected ERP resources while maintaining full isolation and control within the production environment.

## 🔧 Technical Problem
- No trust or shared authentication between forests  
- Separate AD schemas and isolated environments  
- Need to grant ERP access to external.local users  
- Strict security and autonomy requirements  

## 🧩 Scope of Work
- Deployment of two AD forests: production.local and external.local  
- DNS configuration using Conditional Forwarders  
- Creation of a one‑way incoming Resource Forest Trust  
- Kerberos authentication configuration and validation  
- Assigning permissions for external.local users to ERP resources  
- Trust validation and login testing  


## 📁 Repository Structure
- `/documentation/` — full project documentation  
- `/infra/scripts/` — PowerShell automation scripts for AD, DNS and trust  
- `/screenshots/` — deployment screenshots  
- `/architecture/` — architecture and authentication flow diagrams  
- `/readme/` — repository presentation files  

## ✅ Results
- External users gained secure access to ERP systems  
- Full isolation between forests was preserved  
- Compliance with security and GDPR requirements  
- Kerberos authentication works across forests  
- A reusable trust model for future deployments  

## 📘 Conclusion
The Resource Forest Trust provided a secure and controlled method for cross‑forest access without compromising autonomy. The solution improved collaboration while maintaining strict security boundaries.

## 📄 License
Demonstration project — for educational and portfolio purposes.
