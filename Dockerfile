FROM tbfisher/drupal-nginx:php-5.6.x

# Configure files directory.
RUN mkdir -p /var/www_files/public && \
    mkdir -p /var/www_files/private && \
    chown -R www-data:www-data /var/www_files

# Direct ssh access to container.
COPY ~/.ssh/authorized_keys /root/.ssh/authorized_keys

# Configuración de Solr ? Redis? etc...
