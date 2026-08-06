FROM docker.kelnik.pro/tests/devops-stack:1.0

# Заменяем конфиг PHP-FPM с увеличенными воркерами
COPY www.conf /etc/php/8.4/fpm/pool.d/www.conf

# Заменяем исходный PHP-код с оптимизированной логикой кэша и PDO
COPY index.php /var/www/html/index.php
