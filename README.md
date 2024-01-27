# Flask Uygulaması ve Monitoring Sistemi Dönem Projesi Dokümantasyonu

## Proje Özeti
Bu projede, basit bir Flask web uygulaması geliştirdik. Uygulamamız Docker konteyner içerisinde nasıl dağıtılacağını, ayrıca Prometheus ve Grafana kullanarak monitoring sistemi kurmayı ve uygulamamızın performansını nasıl izleyebileceğimizi gösterdik.

## Kullanılan Teknolojiler ve Araçlar

### Flask
Python tabanlı hafif bir web uygulama çatısı olan Flask, projemizin temelini oluşturdu. Basit bir RESTful API oluşturmak için idealdir.

#### Temel Flask Uygulaması Özellikleri:
- `echo-name` adında bir POST endpoint'i içerir.
- Gelen isteklerdeki `name` parametresini alarak, "Hello, {name}" formatında bir yanıt döner.

### Docker
Uygulamayı izole edilmiş ve bağımsız bir ortamda çalıştırmak için Docker kullanıldı. Docker, uygulamanın bağımlılıklarını içeren ve herhangi bir makinede çalıştırılabilen bir imaj oluşturmayı mümkün kılar.

#### Docker İmajı ve Konteyner:
- Flask uygulaması için bir `Dockerfile` oluşturuldu ve Docker imajı inşa edildi.
- Bu imaj Docker Hub'a yüklendi ve Kubernetes üzerinde dağıtılmak üzere kullanıldı.

### Kubernetes
Konteynerize edilmiş uygulamaların yönetimi ve ölçeklendirilmesi için Kubernetes kullanıldı. Kubernetes, konteyner dağıtımı, ölçeklendirme ve yönetimini otomatikleştiren bir sistemdir.

#### Kubernetes Objeleri:
- **Deployment**: Uygulamanın istenilen durumunu tanımlar ve pod'ların ölçeklendirilmesini ve güncellenmesini yönetir.
- **Service**: Uygulamaya sabit bir erişim noktası sağlar ve pod'lar arası yük dengesini yönetir.

### Prometheus
Sistem ve servislerin metrik toplama işlemleri için Prometheus kullanıldı. Prometheus, zaman serisi verilerini toplar ve analiz eder.

#### Prometheus Entegrasyonu:
- Flask uygulamasına Prometheus metrik toplama yeteneği eklendi.
- `/metrics` endpoint'i aracılığıyla uygulamanın metrikleri toplandı.

### Grafana
Toplanan metriklerin görselleştirilmesi ve izlenmesi için Grafana kullanıldı. Grafana, kullanıcı dostu dashboard'lar ile verilerin anlamlı şekilde sunulmasını sağlar.

#### Grafana Kullanımı:
- Grafana'ya Prometheus veri kaynağı eklendi.
- Çeşitli metrikler için görselleştirmeler içeren dashboard'lar oluşturuldu.

## Projenin Yetenekleri

### Uygulama Yetenekleri:
- Kullanıcıdan aldığı ismi karşılayan ve selamlayan bir HTTP POST endpoint'i sağlar.

### Monitoring Sistemi Yetenekleri:
- Uygulamanın aldığı HTTP istek sayısını, yanıt sürelerini ve diğer performans metriklerini toplar.
- Metriklerin zaman içindeki değişimini gösteren dashboard'lar sunar.

## Sonuç
Bu proje, Flask tabanlı bir RESTful API'nin geliştirilmesi, Docker ile paketlenmesi, Kubernetes üzerinde dağıtılması ve Prometheus ve Grafana ile izlenmesi süreçlerini kapsamaktadır. Proje sonucunda, uygulamanın performans metrikleri başarıyla toplanmış ve görselleştirilmiştir.
