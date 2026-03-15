FROM odoo:18

USER root

COPY ./addons /mnt/extra-addons

USER odoo