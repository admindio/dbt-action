ARG DBT_VERSION=v1.2.1
FROM admindtaylor/admind_dbt_action:${DBT_VERSION}

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
