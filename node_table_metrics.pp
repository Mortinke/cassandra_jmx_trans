define node_table_metrics ()
{ 
  jmxtrans::metrics { "${title}-tables":
    jmx                   => "${::hostname}:<jmx_port>",
    jmx_alias             => "${::hostname}",
    jmx_username          => '<username>',
    jmx_password          => '<password>',
    graphite              => '<graphite_host>:<graphite_port>',
    graphite_root_prefix  => 'liveCassandra',
    json_dir              => '/var/lib/jmxtrans',
    objects              => [
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=AllMemtablesDataSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # renamed in 2.1 from AllMemtablesDataSize to AllMemtablesHeapSize
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=AllMemtablesHeapSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      },
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=AllMemtablesLiveDataSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=AllMemtablesOffHeapSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=BloomFilterDiskSpaceUsed",
        'resultAlias' => "Node.Bloomfilter",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=BloomFilterFalsePositives",
        'resultAlias' => "Node.Bloomfilter",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=BloomFilterOffHeapMemoryUsed",
        'resultAlias' => "Node.Bloomfilter",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=ColUpdateTimeDeltaHistogram",
        'resultAlias' => "Node.Other",
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
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=CompressionMetadataOffHeapMemoryUsed",
        'resultAlias' => "Node.Space",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=CompressionRatio",
        'resultAlias' => "Node.Space",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=IndexSummaryOffHeapMemoryUsed",
        'resultAlias' => "Node.Space",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=LiveDiskSpaceUsed",
        'resultAlias' => "Node.Space",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=LiveSSTableCount",
        'resultAlias' => "Node.Table",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=LiveScannedHistogram",
        'resultAlias' => "Node.Read",
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
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MaxRowSize",
        'resultAlias' => "Node.Row",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MeanRowSize",
        'resultAlias' => "Node.Row",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MemtableColumnsCount",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MemtableDataSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # renamed in 2.1 from MemtableDataSize to MemtableLiveDataSize
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MemtableLiveDataSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1 
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MemtableOffHeapSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1 
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MemtableOnHeapSize",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=MemtableSwitchCount",
        'resultAlias' => "Node.Memtable",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=PendingCompactions",
        'resultAlias' => "Node.Compaction.ColumnFamily",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=PendingFlushes",
        'resultAlias' => "Node.Flush.ColumnFamily",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # deprecated in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=PendingTasks",
        'resultAlias' => "Node.Pending",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=RangeLatency",
        'resultAlias' => "Node.Read",
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
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=ReadLatency",
        'resultAlias' => "Node.Read",
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
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=SSTablesPerReadHistogram",
        'resultAlias' => "Node.Read",
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
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=SpeculativeRetries",
        'resultAlias' => "Node.Read",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=TombstoneScannedHistogram",
        'resultAlias' => "Node.Read",
        'typeNames' => ["name"],
        'attrs' => {
          'Max' => {}, 
          '95thPercentile' => {},
          'Mean' => {},
          '99thPercentile' => {},
          'Count' => {}, 
        },
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=TotalDiskSpaceUsed",
        'resultAlias' => "Node.Space",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=WaitingOnFreeMemtableSpace",
        'resultAlias' => "Node.Other",
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
        'name' => "org.apache.cassandra.metrics:type=ColumnFamily,name=WriteLatency",
        'resultAlias' => "Node.Write",
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
