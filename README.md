# Менеджер событий
Менеджер событий Bbq. Поможет Вам и вашим друзьям собраться вместе, а после - поделиться впечатлениями

Как оно выглядит можете посмотреть [здесь](https://supabbq.site)

# Установка
Для работы вам потребуется `ruby "3.0.4"`, `rails 7`, `gem bundler`

Склонируйте проект и выполните следующие комманды

```
bundle
rails db:migrate
```

Также для работы понадобится установить свои credentials, запустив

```
EDITOR="ваш_редактор --wait" bin/rails credentials:edit
```

Данная команда создаст master.key если его не было (не забудьте добавить его в `.gitignore`) и откроет credentials. В них пропишем (без кавычек):

```
secret_key_base: ваш_секретный_ключ 

    >Создается сам, трогать его не нужно.

yc: > Возможность добавления картинок реализована с помощью bucket на yandex cloud. [Зарегистрируйтесь на облаке](https://cloud.yandex.ru/docs/billing/quickstart/) и [создайте бакет](https://cloud.yandex.ru/docs/storage/operations/buckets/create)
  access_key_id: айди_вашего_ключа
  secret_access_key: ваш_секретный_ключ

mailjet: Возможность отправки почты реализована с помощью [mailjet](https://www.mailjet.com/)
  api_key: ваш_ключ_api
  secret_key: ваш_секретный_ключ

sender_mail: почта_с_которой_вы_будете_отправлять_письма  

yandex_maps: > Для успешного использования карт вам понадобятся [яндекс карты](https://yandex.ru/dev/maps/?p=realty).
  api_key: ваш_ключ_api

vps:
  db: > Настройки доступа к базе данных на впс сервере.
    pass: ваш_пароль_от_бд
    user_name: имя_пользователя
    db_name: имя_бд

host: > Здесь можно настроить ваш домен и ссылку на сайт.
  name: ваш_домен
  link: ваша_ссылка

omniauth: > Настройки для авторизации через сторонние приложения.
  github_dev: > Гитхаб для разработки. [Github api](https://docs.github.com/en)
    client_id: ваш_клиентский_айди
    client_secret: ваш_клиентский_секретный_ключ
    
  github_prod: > Гитхаб для продакшена
    client_id: ваш_клиентский_айди
    client_secret: ваш_клиентский_секретный_ключ
  
  google: > Гугл для продакшена. [Google api](https://console.cloud.google.com/apis)
    client_id: ваш_клиентский_айди
    client_secret: ваш_клиентский_секретный_ключ
```

# Запуск

Для запуска на локальном сервере выполните команду `rails s`
