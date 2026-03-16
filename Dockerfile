FROM odoo:18

USER root

COPY ./addons /mnt/extra-addons

USER odoo

CMD odoo \
--db_host=$DB_HOST \
--db_port=$DB_PORT \
--db_user=$DB_USER \
--db_password=$DB_PASSWORD \
--addons-path=/mnt/extra-addons \
--xmlrpc-port=$PORT \
-d odoo_cbv6 \

