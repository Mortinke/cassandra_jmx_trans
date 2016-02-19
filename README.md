# cassandra_jmx_trans
create cassandra jmxtrans configuration files with puppet 



##### install jmx

use https://github.com/jmxtrans/jmxtrans to install jmxtrans on your host

```
class { 'jmxtrans':
  run_interval => 15,
  log_level    => 'info',
  version      => 'installed'
}
```

##### generate jmxtrans configuration files for cassandra monitoring

```
node_metrics{"${::hostname}":}

node_table_metrics{"${::hostname}":}

node_stage_metrics{"${::hostname}":}

# all keyspaces
keyspace_metrics{'<keyspace_name_1>':}
keyspace_metrics{'<keyspace_name_2>':}
keyspace_metrics{'<keyspace_name_n>':}

# all tables
table_metrics{'<keyspace_name_1>.<table_name_1>':
  keyspace => '<keyspace_name_1>',
  table    => '<table_name_1>,
}

table_metrics{'<keyspace_name_1>.<table_name_2>':
  keyspace => '<keyspace_name_1>',
  table    => '<table_name_2>,
}
