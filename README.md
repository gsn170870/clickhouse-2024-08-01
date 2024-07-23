# Курс "Clickhouse для Data Engineer" (группа 2024-08-01)

## Программа курса
1. Введение. Аналитические базы данных. Отличия OLAP и OLTP нагрузки. Столбцовые и строковые базы данных
2. Область применения ClickHouse, отличие от других СУБД, Преимущества и ограничения. Архитектура.
3. Начало работы с ClickHouse. Запуск и подключение. Системные требования. Варианты развертывания: нативная установка, докер, облачные платформы, terraform, k8s
4. Развертывание кластера clickhouse. Включение репликации
5. Основы кодогенрации. Создание DWH на основе Clickhouse с помощью dbt.
6. Типы данных в Clickhouse. Поддерживаемые типы файлов. Загрузка данных из файла.
7. Движки таблиц и баз данных в Clickhouse.
8. Поиск данных в Clickhouse. Разреженные индексы. ANN-индексы. Inv-индексы.
9. Интерфейсы доступа в Clickhouse. Интеграции с другими БД, очередями сообщений, программами на популярных ЯП.
10. DWH c dbt.
11. Построение ETL с airflow.
 
## Полезные материалы
- [Практические задания](https://docs.google.com/spreadsheets/d/1QzvpMAfdqdgD8BaO9V6Y20IpPf2jDODC_EqyUrxfuPU/edit?usp=sharing)
- [Notion](https://cuddly-blob-cc7.notion.site/Clickhouse-Data-361edfceabb647c48829529090d9f24f)
- [Documentation: https://clickhouse.tech/](https://clickhouse.tech/)
- [Altinity Blog — ClickHouse Best Practices, Tips, Tricks, & More](https://www.altinity.com/blog) 
- [ClickHouse - YouTube](https://www.youtube.com/channel/UChtmrD-dsdpspr42P_PyRAw) 
- [ClickHouse® is a free analytics DBMS for big data](https://github.com/ClickHouse/ClickHouse)
- https://cuddly-blob-cc7.notion.site/Clickhouse-Data-361edfceabb647c48829529090d9f24f
- https://cuddly-blob-cc7.notion.site/17cf1c0a2bc743a2af52a2b3fae01e6e
## Datasets
[train.csv](..%2F%D0%97%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8%2Ftrain.csv)

установка pycharm 
sudo apt update
sudo apt upgrade
sudo apt install snapd
sudo snap install pycharm-community --classic


rc1a-kba2u19t9u3dd953.mdb.yandexcloud.net


сертификаты

sudo mkdir --parents /usr/local/share/ca-certificates/Yandex && \
sudo wget "https://storage.yandexcloud.net/cloud-certs/RootCA.pem" \
   --output-document /usr/local/share/ca-certificates/Yandex/RootCA.crt && \
sudo wget "https://storage.yandexcloud.net/cloud-certs/IntermediateCA.pem" \
   --output-document /usr/local/share/ca-certificates/Yandex/IntermediateCA.crt && \
sudo chmod 655 \
   /usr/local/share/ca-certificates/Yandex/RootCA.crt \
   /usr/local/share/ca-certificates/Yandex/IntermediateCA.crt && \
sudo update-ca-certificates



mkdir -Force $HOME\.yandex; `
curl.exe https://storage.yandexcloud.net/cloud-certs/RootCA.pem `
   --output $HOME\.yandex\RootCA.crt; `
curl.exe https://storage.yandexcloud.net/cloud-certs/IntermediateCA.pem `
   --output $HOME\.yandex\IntermediateCA.pem; `
Import-Certificate `
   -FilePath $HOME\.yandex\RootCA.crt `
   -CertStoreLocation cert:\CurrentUser\Root; `
Import-Certificate `
   -FilePath $HOME\.yandex\IntermediateCA.pem `
   -CertStoreLocation cert:\CurrentUser\Root
