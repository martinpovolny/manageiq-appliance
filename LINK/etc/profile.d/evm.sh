[[ -s "/etc/default/evm" ]] && source "/etc/default/evm"

# Aliases:
alias ap='/usr/bin/appliance_console'
alias vmdb='cd /var/www/miq/vmdb'
alias appliance='[[ -n ${APPLIANCE_SOURCE_DIRECTORY} ]] && cd ${APPLIANCE_SOURCE_DIRECTORY}'

# Tail Logs:
function tailmiq() #If no value is given with tailmiq it defaults to the evm.log
{
  tail -f /var/www/miq/vmdb/log/${1:-evm}.log
}
alias tailpglog='tail -f $APPLIANCE_PG_DATA/pg_log/postgresql.log'

# Appliance Status:
alias apstatus='echo "EVM Status:";service evmserverd status;echo " ";echo "HTTP Status:";service httpd status'
