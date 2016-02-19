define node_metrics()
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
	      'name' => 'java.lang:type=MemoryPool,name=*',
	      'resultAlias' => 'JVM',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Usage' => {}, 
	      } 
	    }, {
	      'name' => 'java.lang:type=OperatingSystem',
	      'resultAlias' => 'OS',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'SystemLoadAverage' => {},
	        'AvailableProcessors' => {} ,
	        'TotalPhysicalMemorySize' => {}, 
	        'FreePhysicalMemorySize' => {},
	        'TotalSwapSpaceSize' => {},
	        'FreeSwapSpaceSize' => {}, 
	        'OpenFileDescriptorCount' => {},
	        'ProcessCpuLoad' => {},
	        'SystemCpuLoad' => {}, 
	      } 
	    }, {
	      'name' => 'java.lang:type=Threading',
	      'resultAlias' => 'JVM.Threads',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'DaemonThreadCount' => {},
	        'PeakThreadCount' => {} ,
	        'ThreadCount' => {}, 
	        'TotalStartedThreadCount' => {},  
	      }  
	    }, {
	      'name' => 'java.lang:type=GarbageCollector,name=G1 Old Generation',
	      'resultAlias' => 'JVM_G1.G1OldGeneration',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'CollectionCount' => {},
	        'CollectionTime' => {}, 
	      } 
	    }, {
	      'name' => 'java.lang:type=GarbageCollector,name=G1 Young Generation',
	      'resultAlias' => 'JVM_G1.G1YoungGeneration',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'CollectionCount' => {},
	        'CollectionTime' => {}, 
	      } 
	    }, {
        'name' => 'org.apache.cassandra.metrics:type=CQL,name=PreparedStatementsCount',
        'resultAlias' => 'Node.CQL',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=CQL,name=PreparedStatementsEvicted',
        'resultAlias' => 'Node.CQL',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=CQL,name=PreparedStatementsExecuted',
        'resultAlias' => 'Node.CQL',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=CQL,name=PreparedStatementsRatio',
        'resultAlias' => 'Node.CQL',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=CQL,name=RegularStatementsExecuted',
        'resultAlias' => 'Node.CQL',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=Cache,scope=KeyCache,name=Capacity',
        'resultAlias' => 'Node.KeyCache',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=Cache,scope=KeyCache,name=Entries',
        'resultAlias' => 'Node.KeyCache',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=Cache,scope=KeyCache,name=HitRate',
        'resultAlias' => 'Node.KeyCache',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=Cache,scope=KeyCache,name=Hits',
        'resultAlias' => 'Node.KeyCache',
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Count' => {}, 
        },
      }, {
        'name' => 'org.apache.cassandra.metrics:type=Cache,scope=KeyCache,name=Requests',
        'resultAlias' => 'Node.KeyCache',
        'typeNames' => ["name"],
        'attrs' => {
          'OneMinuteRate' => {},
          'Count' => {}, 
        },
      }, {
        'name' => 'org.apache.cassandra.metrics:type=Cache,scope=KeyCache,name=Size',
        'resultAlias' => 'Node.KeyCache',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
	      'name' => 'org.apache.cassandra.metrics:type=Client,name=connectedNativeClients',
	      'resultAlias' => 'Node.Connected',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Client,name=connectedThriftClients',
	      'resultAlias' => 'Node.Connected',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, 
	    # org.apache.cassandra.metrics:type=ClientRequest,scope=* doesn't report useful data 
	    {
        'name' => 'org.apache.cassandra.metrics:type=ClientRequestMetrics,name=ReadTimeouts',
        'resultAlias' => 'Node.ClientRequestMetrics',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ClientRequestMetrics,name=ReadUnavailables',
        'resultAlias' => 'Node.ClientRequestMetrics',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ClientRequestMetrics,name=WriteTimeouts',
        'resultAlias' => 'Node.ClientRequestMetrics',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ClientRequestMetrics,name=WriteUnavailables',
        'resultAlias' => 'Node.ClientRequestMetrics',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
	      'name' => 'org.apache.cassandra.metrics:type=CommitLog,name=PendingTasks',
	      'resultAlias' => 'Node.Commitlog',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, 
	    # added in 2.1
	    {
        'name' => 'org.apache.cassandra.metrics:type=CommitLog,name=WaitingOnCommit',
        'resultAlias' => 'Node.Commitlog',
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
        'name' => 'org.apache.cassandra.metrics:type=CommitLog,name=WaitingOnSegmentAllocation',
        'resultAlias' => 'Node.Commitlog',
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
	      'name' => 'org.apache.cassandra.metrics:type=Compaction,name=CompletedTasks',
	      'resultAlias' => 'Node.Compaction',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Compaction,name=PendingTasks',
	      'resultAlias' => 'Node.Compaction',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=BINARY,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=MUTATION,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=PAGED_RANGE,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=RANGE_SLICE,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=READ,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=READ_REPAIR,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=REQUEST_RESPONSE,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=DroppedMessage,scope=_TRACE,name=Dropped',
	      'resultAlias' => 'Node.Dropped',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=FileCache,name=HitRate',
	      'resultAlias' => 'Node.FileCache',
	      'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=FileCache,name=Hits',
	      'resultAlias' => 'Node.FileCache',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      }
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=FileCache,name=Requests',
	      'resultAlias' => 'Node.FileCache',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},  
	      }
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=FileCache,name=Size',
	      'resultAlias' => 'Node.FileCache',
	      'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
	    }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_created-172.22.30.195',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_created-172.22.30.196',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_created-172.22.30.197',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_created-172.22.30.198',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_not_stored-172.22.30.195',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_not_stored-172.22.30.196',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_not_stored-172.22.30.197',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=HintedHandOffManager,name=Hints_not_stored-172.22.30.198',
        'resultAlias' => 'Node.HintedHandOffManager',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },
	    # added in 2.1
	    {
        'name' => 'org.apache.cassandra.metrics:type=ReadRepair,name=Attempted',
        'resultAlias' => 'Node.ReadRepair',
        'typeNames' => ["name"],
        'attrs' => {
          'Count' => {},
          'OneMinuteRate' => {},
        }
      }, {
	      'name' => 'org.apache.cassandra.metrics:type=ReadRepair,name=RepairedBackground',
	      'resultAlias' => 'Node.ReadRepair',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      }
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=ReadRepair,name=RepairedBlocking',
	      'resultAlias' => 'Node.ReadRepair',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      }
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Storage,name=Exceptions',
	      'resultAlias' => 'Node.Storage',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Storage,name=Load',
	      'resultAlias' => 'Node.Storage',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Storage,name=TotalHints',
	      'resultAlias' => 'Node.Storage',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Storage,name=HintsInProgress',
	      'resultAlias' => 'Node.Storage',
	      'typeNames' => ["name"],
	      'attrs' => {'Count' => {}},
	    }, 
	    # renamed in 2.1 from HintsInProgress to TotalHintsInProgress
	    {
        'name' => 'org.apache.cassandra.metrics:type=Storage,name=TotalHintsInProgress',
        'resultAlias' => 'Node.Storage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.195,name=CommandCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_195',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.195,name=CommandPendingTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_195',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.195,name=CommandDroppedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_195',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.195,name=ResponseCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_195',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.195,name=CommandComplete',
	      'resultAlias' => 'Node.Connection.172_22_30_195',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.195,name=Timeouts',
	      'resultAlias' => 'Node.Connection.172_22_30_195',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      },
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.196,name=CommandCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_196',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.196,name=CommandPendingTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_196',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.196,name=CommandDroppedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_196',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.196,name=ResponseCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_196',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.196,name=CommandComplete',
	      'resultAlias' => 'Node.Connection.172_22_30_196',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.196,name=Timeouts',
	      'resultAlias' => 'Node.Connection.172_22_30_196',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      },
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.197,name=CommandCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_197',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.197,name=CommandPendingTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_197',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.197,name=CommandDroppedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_197',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.197,name=ResponseCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_197',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.197,name=CommandComplete',
	      'resultAlias' => 'Node.Connection.172_22_30_197',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.197,name=Timeouts',
	      'resultAlias' => 'Node.Connection.172_22_30_197',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      },
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.198,name=CommandCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_198',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.198,name=CommandPendingTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_198',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.198,name=CommandDroppedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_198',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.198,name=ResponseCompletedTasks',
	      'resultAlias' => 'Node.Connection.172_22_30_198',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.198,name=CommandComplete',
	      'resultAlias' => 'Node.Connection.172_22_30_198',
	      'typeNames' => ["name"],
	      'attrs' => {'Value' => {}},
	    }, {
	      'name' => 'org.apache.cassandra.metrics:type=Connection,scope=172.22.30.198,name=Timeouts',
	      'resultAlias' => 'Node.Connection.172_22_30_198',
	      'typeNames' => ["name"],
	      'attrs' => {
	        'Count' => {},
	        'OneMinuteRate' => {},
	      },
	    }, {
        'name' => 'org.apache.cassandra.metrics:type=Connection,name=TotalTimeouts',
        'resultAlias' => 'Node.Connection',
        'typeNames' => ["name"],
        'attrs' => {
          'Count' => {},
        },
      },
    ]
  }
}
