# Sales Performance Reporting & KPI Analysis (SQL + Power BI)

## Proje Özeti

Bu projede, Superstore veri seti kullanılarak tek sayfalık bir KPI dashboard oluşturulmuştur.

Amaç; satış performansını üst seviyede izlemek, temel metrikleri takip etmek ve yönetim raporlamasına uygun bir yapı oluşturmaktır.

Veri hazırlama ve hesaplamalar SQL ile yapılmış, görselleştirme ve raporlama süreci ise Power BI üzerinden gerçekleştirilmiştir.

Bu çalışma; operasyon, raporlama (MIS) ve iş analizi rollerinde kullanılan gerçek iş senaryolarına uygun şekilde tasarlanmıştır.

---

## Cevaplanan İş Soruları
- Toplam satış performansı nedir?
- Kaç adet sipariş ve müşteri bu geliri oluşturmuştur?
- Ortalama sipariş tutarı (AOV) nedir?
- Satışlar zaman içinde (aylık) nasıl değişmektedir?
- Hangi kategori, bölge ve müşteri segmentleri daha yüksek performans göstermektedir?

---

## Temel KPI’lar
- Toplam Satış (Total Sales)
- Toplam Sipariş (Total Orders)
- Toplam Müşteri (Total Customers)
- Ortalama Sipariş Tutarı (Average Order Value – AOV)

---

## Dashboard İçeriği
- **Monthly Sales Trend (Aylık Satış Trendi)**  
  Zaman içinde satışların nasıl değiştiğini gösterir.
  Artış/azalış eğilimleri ve dönemsel hareketler takip edilebilir.

- **Sales by Category (Kategori Bazlı Satış)**  
  Ürün kategorilerinin toplam satışa katkısını karşılaştırır.

- **Sales by Region (Bölge Bazlı Satış)**  
  Bölgeler arası performans farklarını gösterir.
  Yüksek ve düşük performanslı bölgeler kolayca analiz edilebilir.

- **Sales by Segment (Segment Bazlı Satış)**  
  Müşteri segmentlerinin (Consumer, Corporate, Home Office) satışa katkısını gösterir.

---

## Kullanılan Teknolojiler
- **SQL (MySQL)**  
  - Veri temizleme
  - KPI hesaplamaları
  - Raporlama için view oluşturma

- **Power BI**  
  - KPI kartları
  - Grafikler (line & bar chart) 
  - Dashboard tasarımı

- **Veri Seti**  
  - Superstore Sales (`train_fixed.csv`)

---

## Öne Çıkan İçgörüler
- Satışlar genel olarak artış trendi göstermektedir.
- Consumer segmenti en yüksek katkıyı sağlamaktadır.
- Technology kategorisi en yüksek gelir üreten kategoridir.
- West ve East bölgeleri diğer bölgelere göre daha yüksek performans göstermektedir.
- Ortalama sipariş tutarı, işlem başına gelirin güçlü olduğunu göstermektedir.

---

## Proje Yapısı

<pre>
kpi-dashboard-sales-performance-sql-powerbi/
│
├── data/
│ └── train_fixed.csv
│
├── powerbi/
│ ├── sales_performance_overview_kpi_dashboard.png
│
├── sql/
│ └── kpi_dashboard_superstore.sql
└── README.md
</pre>

---

## Notlar
- Proje, gerçek iş hayatında kullanılan tek sayfa KPI dashboard mantığıyla hazırlanmıştır.
- Yapı, özellikle operasyon, raporlama ve iş analisti pozisyonları için uygun olacak şekilde kurgulanmıştır.
