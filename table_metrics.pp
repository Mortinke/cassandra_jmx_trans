define table_metrics (
  $keyspace = '',
  $table = '',
)
{ 
  jmxtrans::metrics { "${title}":
    jmx                   => "${::hostname}:<jmx_port>",
    jmx_alias             => "${::hostname}",
    jmx_username          => '<username>',
    jmx_password          => '<password>',
    graphite              => '<graphite_host>:<graphite_port>',
    graphite_root_prefix  => 'liveCassandra',
    json_dir              => '/var/lib/jmxtrans',
    objects              => [
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=AllMemtablesDataSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # renamed in 2.1 from AllMemtablesDataSize to AllMemtablesHeapSize
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=AllMemtablesHeapSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      },
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=AllMemtablesLiveDataSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=AllMemtablesOffHeapSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=BloomFilterDiskSpaceUsed",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=BloomFilterFalsePositives",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=BloomFilterOffHeapMemoryUsed",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CasCommitLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},          
        },
      },
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CasPrepareLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},          
        },
      },
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CasProposeLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},          
        },
      },
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=ColUpdateTimeDeltaHistogram",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},          
        },
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CompressionMetadataOffHeapMemoryUsed",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CompressionRatio",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CoordinatorReadLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=CoordinatorScanLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      },
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=IndexSummaryOffHeapMemoryUsed",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=KeyCacheHitRate",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=LiveDiskSpaceUsed",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=LiveSSTableCount",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=LiveScannedHistogram",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MaxRowSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MeanRowSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MemtableColumnsCount",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MemtableDataSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # renamed in 2.1 from MemtableDataSize to MemtableLiveDataSize
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MemtableLiveDataSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1 
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MemtableOffHeapSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1 
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MemtableOnHeapSize",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=MemtableSwitchCount",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=PendingCompactions",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=PendingFlushes",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # deprecated in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=PendingTasks",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=RangeLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=ReadLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=SSTablesPerReadHistogram",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=SpeculativeRetries",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=TombstoneScannedHistogram",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'Max' => {}, 
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {}, 
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=TotalDiskSpaceUsed",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=WaitingOnFreeMemtableSpace",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,keyspace=${keyspace},scope=${table},name=WriteLatency",
        'resultAlias' => "Keyspace.${keyspace}.${table}",
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Max' => {},
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {},
        },
      },
    ]
  }
}
