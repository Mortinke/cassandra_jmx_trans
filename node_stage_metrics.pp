define node_stage_metrics()
{ 
  jmxtrans::metrics { "${title}-stages":
    jmx                   => "${::hostname}:<jmx_port>",
    jmx_alias             => "${::hostname}",
    jmx_username          => '<username>',
    jmx_password          => '<password>',
    graphite              => '<graphite_host>:<graphite_port>',
    graphite_root_prefix  => 'liveCassandra',
    json_dir              => '/var/lib/jmxtrans',
    objects              => [
      # added in 2.1
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=RPC-THREAD-POOL,scope=RPC-Thread,name=ActiveTasks',
        'resultAlias' => 'Stage.RPC-Thread',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=RPC-THREAD-POOL,scope=RPC-Thread,name=CompletedTasks',
        'resultAlias' => 'Stage.RPC-Thread',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=RPC-THREAD-POOL,scope=RPC-Thread,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.RPC-Threadd',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=RPC-THREAD-POOL,scope=RPC-Thread,name=PendingTasks',
        'resultAlias' => 'Stage.RPC-Thread',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=RPC-THREAD-POOL,scope=RPC-Thread,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.RPC-Thread',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=AntiEntropyStage,name=ActiveTasks',
        'resultAlias' => 'Stage.AntiEntropyStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=AntiEntropyStage,name=CompletedTasks',
        'resultAlias' => 'Stage.AntiEntropyStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=AntiEntropyStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.AntiEntropyStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=AntiEntropyStage,name=PendingTasks',
        'resultAlias' => 'Stage.AntiEntropyStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=AntiEntropyStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.AntiEntropyStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CacheCleanupExecutor,name=ActiveTasks',
        'resultAlias' => 'Stage.CacheCleanupExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CacheCleanupExecutor,name=CompletedTasks',
        'resultAlias' => 'Stage.CacheCleanupExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CacheCleanupExecutor,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.CacheCleanupExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CacheCleanupExecutor,name=PendingTasks',
        'resultAlias' => 'Stage.CacheCleanupExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CacheCleanupExecutor,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.CacheCleanupExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=commitlog_archiver,name=ActiveTasks',
        'resultAlias' => 'Stage.commitlog_archiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=commitlog_archiver,name=CompletedTasks',
        'resultAlias' => 'Stage.commitlog_archiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=commitlog_archiver,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.commitlog_archiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=commitlog_archiver,name=PendingTasks',
        'resultAlias' => 'Stage.commitlog_archiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=commitlog_archiver,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.commitlog_archiver',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },
      # renamed in 2.1 from commitlog_archiver to 
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CommitLogArchiver,name=ActiveTasks',
        'resultAlias' => 'Stage.CommitLogArchiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CommitLogArchiver,name=CompletedTasks',
        'resultAlias' => 'Stage.CommitLogArchiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CommitLogArchiver,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.CommitLogArchiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CommitLogArchiver,name=PendingTasks',
        'resultAlias' => 'Stage.CommitLogArchiver',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CommitLogArchiver,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.CommitLogArchiver',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CompactionExecutor,name=ActiveTasks',
        'resultAlias' => 'Stage.CompactionExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CompactionExecutor,name=CompletedTasks',
        'resultAlias' => 'Stage.CompactionExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CompactionExecutor,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.CompactionExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CompactionExecutor,name=PendingTasks',
        'resultAlias' => 'Stage.CompactionExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=CompactionExecutor,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.CompactionExecutor',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=GossipStage,name=ActiveTasks',
        'resultAlias' => 'Stage.GossipStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=GossipStage,name=CompletedTasks',
        'resultAlias' => 'Stage.GossipStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=GossipStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.GossipStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=GossipStage,name=PendingTasks',
        'resultAlias' => 'Stage.GossipStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=GossipStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.GossipStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=HintedHandoff,name=ActiveTasks',
        'resultAlias' => 'Stage.HintedHandoff',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=HintedHandoff,name=CompletedTasks',
        'resultAlias' => 'Stage.HintedHandoff',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=HintedHandoff,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.HintedHandoff',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=HintedHandoff,name=PendingTasks',
        'resultAlias' => 'Stage.HintedHandoff',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=HintedHandoff,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.HintedHandoff',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=InternalResponseStage,name=ActiveTasks',
        'resultAlias' => 'Stage.InternalResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=InternalResponseStage,name=CompletedTasks',
        'resultAlias' => 'Stage.InternalResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=InternalResponseStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.InternalResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=InternalResponseStage,name=PendingTasks',
        'resultAlias' => 'Stage.InternalResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=InternalResponseStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.InternalResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=FlushWriter,name=ActiveTasks',
        'resultAlias' => 'Stage.FlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=FlushWriter,name=CompletedTasks',
        'resultAlias' => 'Stage.FlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=FlushWriter,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.FlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=FlushWriter,name=PendingTasks',
        'resultAlias' => 'Stage.FlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=FlushWriter,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.FlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },  
      # renamed in cassandra 2.1 from FlushWriter to MemtableFlushWriter
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableFlushWriter,name=ActiveTasks',
        'resultAlias' => 'Stage.MemtableFlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableFlushWriter,name=CompletedTasks',
        'resultAlias' => 'Stage.MemtableFlushWriterd',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableFlushWriter,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MemtableFlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableFlushWriter,name=PendingTasks',
        'resultAlias' => 'Stage.MemtableFlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableFlushWriter,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MemtableFlushWriter',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlusher,name=ActiveTasks',
        'resultAlias' => 'Stage.MemtablePostFlusher',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlusher,name=CompletedTasks',
        'resultAlias' => 'Stage.MemtablePostFlusher',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlusher,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MemtablePostFlusher',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlusher,name=PendingTasks',
        'resultAlias' => 'Stage.MemtablePostFlusher',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlusher,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MemtablePostFlusher',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # renamed in 2.1 from MemtablePostFlusher to MemtablePostFlush    
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlush,name=ActiveTasks',
        'resultAlias' => 'Stage.MemtablePostFlush',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlush,name=CompletedTasks',
        'resultAlias' => 'Stage.MemtablePostFlush',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlush,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MemtablePostFlush',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlush,name=PendingTasks',
        'resultAlias' => 'Stage.MemtablePostFlush',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtablePostFlush,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MemtablePostFlush',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # added in 2.1
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableReclaimMemory,name=ActiveTasks',
        'resultAlias' => 'Stage.MemtableReclaimMemory',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableReclaimMemory,name=CompletedTasks',
        'resultAlias' => 'Stage.MemtableReclaimMemory',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableReclaimMemory,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MemtableReclaimMemory',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableReclaimMemory,name=PendingTasks',
        'resultAlias' => 'Stage.MemtableReclaimMemory',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemtableReclaimMemory,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MemtableReclaimMemory',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemoryMeter,name=ActiveTasks',
        'resultAlias' => 'Stage.MemoryMeter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemoryMeter,name=CompletedTasks',
        'resultAlias' => 'Stage.MemoryMeter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemoryMeter,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MemoryMeter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemoryMeter,name=PendingTasks',
        'resultAlias' => 'Stage.MemoryMeter',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MemoryMeter,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MemoryMeterd',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, 
      # renamed in 2.1 from MemoryMeter to Sampler
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=Sampler,name=ActiveTasks',
        'resultAlias' => 'Stage.Sampler',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=Sampler,name=CompletedTasks',
        'resultAlias' => 'Stage.Sampler',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=Sampler,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.Sampler',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=Sampler,name=PendingTasks',
        'resultAlias' => 'Stage.Sampler',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=Sampler,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.Sampler',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MigrationStage,name=ActiveTasks',
        'resultAlias' => 'Stage.MigrationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MigrationStage,name=CompletedTasks',
        'resultAlias' => 'Stage.MigrationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MigrationStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MigrationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MigrationStage,name=PendingTasks',
        'resultAlias' => 'Stage.MigrationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MigrationStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MigrationStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },     {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MiscStage,name=ActiveTasks',
        'resultAlias' => 'Stage.MiscStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MiscStage,name=CompletedTasks',
        'resultAlias' => 'Stage.MiscStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MiscStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MiscStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MiscStage,name=PendingTasks',
        'resultAlias' => 'Stage.MiscStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=MiscStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MiscStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=PendingRangeCalculator,name=ActiveTasks',
        'resultAlias' => 'Stage.PendingRangeCalculator',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=PendingRangeCalculator,name=CompletedTasks',
        'resultAlias' => 'Stage.PendingRangeCalculator',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=PendingRangeCalculator,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.PendingRangeCalculator',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=PendingRangeCalculator,name=PendingTasks',
        'resultAlias' => 'Stage.PendingRangeCalculator',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=internal,scope=PendingRangeCalculator,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.PendingRangeCalculator',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=MutationStage,name=ActiveTasks',
        'resultAlias' => 'Stage.MutationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=MutationStage,name=CompletedTasks',
        'resultAlias' => 'Stage.MutationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=MutationStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.MutationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=MutationStage,name=PendingTasks',
        'resultAlias' => 'Stage.MutationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=MutationStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.MutationStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      },     {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadRepairStage,name=ActiveTasks',
        'resultAlias' => 'Stage.ReadRepairStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadRepairStage,name=CompletedTasks',
        'resultAlias' => 'Stage.ReadRepairStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadRepairStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.ReadRepairStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadRepairStage,name=PendingTasks',
        'resultAlias' => 'Stage.ReadRepairStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadRepairStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.ReadRepairStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },     {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadStage,name=ActiveTasks',
        'resultAlias' => 'Stage.ReadStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadStage,name=CompletedTasks',
        'resultAlias' => 'Stage.ReadStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.ReadStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadStage,name=PendingTasks',
        'resultAlias' => 'Stage.ReadStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReadStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.ReadStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      },     
      # depracted in 2.1
      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReplicateOnWriteStage,name=ActiveTasks',
        'resultAlias' => 'Stage.ReplicateOnWriteStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReplicateOnWriteStage,name=CompletedTasks',
        'resultAlias' => 'Stage.ReplicateOnWriteStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReplicateOnWriteStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.ReplicateOnWriteStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReplicateOnWriteStage,name=PendingTasks',
        'resultAlias' => 'Stage.ReplicateOnWriteStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=ReplicateOnWriteStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.ReplicateOnWriteStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },      {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=RequestResponseStage,name=ActiveTasks',
        'resultAlias' => 'Stage.RequestResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=RequestResponseStage,name=CompletedTasks',
        'resultAlias' => 'Stage.RequestResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=RequestResponseStage,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.RequestResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=RequestResponseStage,name=PendingTasks',
        'resultAlias' => 'Stage.RequestResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=request,scope=RequestResponseStage,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.RequestResponseStage',
        'typeNames' => ["name"],
        'attrs' => {'Count' => {}},
      },     {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=transport,scope=Native-Transport-Requests,name=ActiveTasks',
        'resultAlias' => 'Stage.Native-Transport-Requests',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=transport,scope=Native-Transport-Requests,name=CompletedTasks',
        'resultAlias' => 'Stage.Native-Transport-Requests',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=transport,scope=Native-Transport-Requests,name=CurrentlyBlockedTasks',
        'resultAlias' => 'Stage.Native-Transport-Requests',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=transport,scope=Native-Transport-Requests,name=PendingTasks',
        'resultAlias' => 'Stage.Native-Transport-Requests',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }, {
        'name' => 'org.apache.cassandra.metrics:type=ThreadPools,path=transport,scope=Native-Transport-Requests,name=TotalBlockedTasks',
        'resultAlias' => 'Stage.Native-Transport-Requests',
        'typeNames' => ["name"],
        'attrs' => {'Value' => {}},
      }
    ]
  }
}
