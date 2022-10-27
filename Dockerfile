ARG DBT_VERSION=v1.3.0
FROM admindtaylor/admind_dbt_action:${DBT_VERSION}

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
