define keyspace_metrics()
{ 
  jmxtrans::metrics { "Keyspace.${title}":
    jmx                   => "${::hostname}:<jmx_port>",
    jmx_alias             => "${::hostname}",
    jmx_username          => '<username>',
    jmx_password          => '<password>',
    graphite              => '<graphite_host>:<graphite_port>',
    graphite_root_prefix  => 'liveCassandra',
    json_dir              => '/var/lib/jmxtrans',
    objects               => [
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=AllMemtablesDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # renamed in 2.1 from AllMemtablesDataSize to AllMemtablesLiveDataSize
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=AllMemtablesLiveDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=AllMemtablesOffHeapDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=AllMemtablesOnHeapDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=BloomFilterDiskSpaceUsed",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, 
	    # added in 2.1
	    {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=BloomFilterOffHeapMemoryUsed",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CasCommitLatency",
        'resultAlias' => "Keyspace.${title}",
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
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CasCommitTotalLatency",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CasPrepareLatency",
        'resultAlias' => "Keyspace.${title}",
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
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CasPrepareTotalLatency",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CasProposeLatency",
        'resultAlias' => "Keyspace.${title}",
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
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CasProposeTotalLatency",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=ColUpdateTimeDeltaHistogram",
        'resultAlias' => "Keyspace.${title}",
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
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=CompressionMetadataOffHeapMemoryUsed",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=IndexSummaryOffHeapMemoryUsed",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=LiveDiskSpaceUsed",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      },
	    {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=MemtableColumnsCount",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=MemtableDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # renamed in 2.1 from MemtableDataSize to MemtableLiveDataSize
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=MemtableLiveDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=MemtableOffHeapDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, 
      # added in 2.1
      {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=MemtableOnHeapDataSize",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=MemtableSwitchCount",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=PendingCompactions",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, 
	    # deprecated in 2.1
	    {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=PendingTasks",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, 
	    # added in 2.1
	    {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=PendingFlushes",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=RangeLatency",
	      'resultAlias' => "Keyspace.${title}",
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
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=ReadLatency",
	      'resultAlias' => "Keyspace.${title}",
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
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=SSTablesPerReadHistogram",
	      'resultAlias' => "Keyspace.${title}",
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
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=TombstoneScannedHistogram",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {
		      'Max' => {},
		      '95thPercentile' => {},
		      'Mean' => {},
		      '99thPercentile' => {},
		      'Count' => {},
		    },
	    }, {   
        'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=TotalDiskSpaceUsed",
        'resultAlias' => "Keyspace.${title}",
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {   
	      'name' => "org.apache.cassandra.metrics:type=Keyspace,keyspace=${title},name=WriteLatency",
	      'resultAlias' => "Keyspace.${title}",
	      'typeNames' => ["name"],
	      'attrs' => {
		      'OneMinuteRate' => {},
		      'Max' => {},
		      '95thPercentile' => {},
		      'Mean' => {},
		      '99thPercentile' => {},
		      'Count' => {},
		    },
	    }
    ]
  }
}
