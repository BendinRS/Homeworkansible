# Домашняя работа "Первые шаги с ansible"

Работы по методичке выполнены успешно:
- необходимо использовать модуль yum/apt
- конфигурационные файлы взяты из шаблона jinja2
- после установки nginx в режиме enable
- Использован при помощи переменных нестандартный порт 8080

### Использование роли

+ Создаем шаблон роли

Для большего интереса добавим вторую ВМ и назовем ее nginx1

```out1
  },
  :nginx1 => {
    :box_name => "centos/7",
    :ip_addr => '192.168.2.151'
}
```
В [ansible.cfg](ansible.cfg) явно указываем нахождение файла inventory

inventory = ../Homeworkansible/inventories/inventory

```out
ansible-galaxy init bendin
```
1. _ [test.yml](roles/bendin/tests/test.yml):_ Запускаемый плейбук
2. _ [nginx.conf.j2](roles/bendin/files/nginx.conf.j2):_ шаблон конфигурации nginx
3. _ [handlers/main.yml](roles/bendin/handlers/main.yml):_ команды systemd
4. _ [meta/main.yml](roles/bendin/meta/main.yml):_ Информация о разработчике
5. _ [tasks/main.yml](roles/bendin/tasks/main.yml):_ Основные испольняемые задачи
6. _ [vars/main.yml](roles/bendin/vars/main.yml):_ Переменные



### Проверяющему для облегчения ~~жизни~~ проверки


