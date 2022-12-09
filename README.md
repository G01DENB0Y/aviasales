# README

Скачай руби

```bash
sudo apt install gnupg git curl -y
```

```bash
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

curl -sSL https://get.rvm.io | bash -s stable
```

Перезапусти терминал

```bash
rvm install 3.1.2
```

в папке с проектом

```bash
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails s
```

http://localhost:3000/


Далее для запуска сервера просто

```bash
bundle exec rails s
```
