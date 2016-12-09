cp Scripts/{JSON.sh,mongodb_stat.sh} /etc/zabbix/{JSON.sh,mongodb_stat.sh}
chown .zabbix /etc/zabbix/{JSON.sh,mongodb_stat.sh}

echo "UserParameter       = mongodb_status,/etc/zabbix/mongodb_stat.sh" >> /etc/zabbix/zabbix_agentd.conf
echo "UserParameter       = mongodb.discovery_db,/etc/zabbix/mongodb_stat.sh db" >> /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart
