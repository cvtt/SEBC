[root@ip-10-145-13-70 tmp]# curl -u cvtt:cloudera  http://ip-10-145-13-70:7180/api/v2/cm/deployment
---
``
{
  "timestamp" : "2016-11-16T23:40:44.297Z",
  "clusters" : [ {
    "name" : "CVTT",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "1047527424"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "1047527424"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "1157785190"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "194"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-10-147-23-91.ec2.internal"
        }, {
          "name" : "hive_metastore_database_name",
          "value" : "hive"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "bootcamp"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-0d5d403dad411137b8ca5e4b5eb43f26",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-680218f1"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-3428049e35073b93176794355f9b518e",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-760218ef"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-9df44b9fec53a40bd73bc2cfaa691410",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-770218ee"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-af232c1fe512f2696339b9be1a05e2d1",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-6b0218f2"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "avngpa4f755wp01b03eium47d"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c3puyc4s135zvkkmzzzl97q31"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-3428049e35073b93176794355f9b518e",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-760218ef"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "qeaqp097vmao1rwrjy7cz28u"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-9df44b9fec53a40bd73bc2cfaa691410",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-770218ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "f2myaxv7fa8sjw0c2m2hmxhrv"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-af232c1fe512f2696339b9be1a05e2d1",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-6b0218f2"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "jovgb94tb0x8wqfvxsi4b5mn"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-10-147-23-91.ec2.internal"
        }, {
          "name" : "database_password",
          "value" : "bootcamp"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-0d5d403dad411137b8ca5e4b5eb43f26"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dgnx5b03w9rprlnz3guq93xu0"
          }, {
            "name" : "secret_key",
            "value" : "vHsKPBDHBthu2P2Hlsc5viuqaehTPX"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-10-147-23-91.ec2.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "bootcamp"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "1047527424"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cu750sgkz7kvn6d4l5g71y3gf"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "8"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "1041235968"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/disk01/yarn/nm,/data/disk02/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/data/disk01/yarn/container-logs,/data/disk02/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3196"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "1047527424"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "3196"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "lVeob1CRqrf9keVSNpGq1zpuKOm0Qv"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-0d5d403dad411137b8ca5e4b5eb43f26",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-680218f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "i7bbxy8brtua5h0g9ozfr5pg"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3428049e35073b93176794355f9b518e",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-760218ef"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "apxz1fzrkixe80mxc38oensiv"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-9df44b9fec53a40bd73bc2cfaa691410",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-770218ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1ba549s3gw0s05el7mqy509ep"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5lb18ifbawou1u0ey5ghz3vas"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-af232c1fe512f2696339b9be1a05e2d1",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-6b0218f2"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "41tb7bv741ve5urz5u6dabz1a"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "53"
          }, {
            "name" : "role_jceks_password",
            "value" : "4d844xzcdxdazc48wel5he46j"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "1041235968"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/disk01/dfs/dn,/data/disk02/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3962512998"
          }, {
            "name" : "dfs_datanode_failed_volumes_tolerated",
            "value" : "1"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/data/disk01/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data/disk01/dfs/nn,/data/disk02/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "1041235968"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data/disk01/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "1041235968"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "se2n5xePuhsyEAjYdVpKaIzAnNlOdO"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "AKXM2WT0XShGK1lzLA6brnHTD4xime"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "y4JCR1hAKrQqAatYNdRmWmz0pF7lMq"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-0d5d403dad411137b8ca5e4b5eb43f26",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-680218f1"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-3428049e35073b93176794355f9b518e",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-760218ef"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7wvietb9k36azhqfce904tyd5"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-9df44b9fec53a40bd73bc2cfaa691410",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-770218ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7u3zaopoyprv47o310l7xsssm"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8il0d4bzwkx801ub8rz3waqz9"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-af232c1fe512f2696339b9be1a05e2d1",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-6b0218f2"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b6ogwia25s1azv12k5i8cqt5v"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-0d5d403dad411137b8ca5e4b5eb43f26",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-680218f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6jdqsfowy1amvxug5ojeoe7ve"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bh6s00v7ip345ml8871lcd3ao"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-0d5d403dad411137b8ca5e4b5eb43f26",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-680218f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d4736l9uxotagvk81wjdwxs4i"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-3428049e35073b93176794355f9b518e",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-760218ef"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "byqpsy5nd6xl29v5g9dwgpqna"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-9df44b9fec53a40bd73bc2cfaa691410",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-770218ee"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3zsjpe42ca484dcroip86s7o9"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-af232c1fe512f2696339b9be1a05e2d1",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-6b0218f2"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "33pqz2h6k0w36vd734oabbvn1"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-0d5d403dad411137b8ca5e4b5eb43f26",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-680218f1"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "cvttcluster"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "cvttcluster"
          }, {
            "name" : "namenode_id",
            "value" : "55"
          }, {
            "name" : "role_jceks_password",
            "value" : "cthvkea864l3ova7y45v00soa"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-a21b0c5fcc35c1b5774b0d7f8dedd710",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-690218f0"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "cvttcluster"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "cvttcluster"
          }, {
            "name" : "namenode_id",
            "value" : "61"
          }, {
            "name" : "role_jceks_password",
            "value" : "6xqb7apanf22g4tdh5mdg8x87"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-680218f1",
    "ipAddress" : "10.145.13.70",
    "hostname" : "ip-10-145-13-70.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-690218f0",
    "ipAddress" : "10.147.23.91",
    "hostname" : "ip-10-147-23-91.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-770218ee",
    "ipAddress" : "10.168.245.149",
    "hostname" : "ip-10-168-245-149.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-6b0218f2",
    "ipAddress" : "10.181.107.50",
    "hostname" : "ip-10-181-107-50.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-760218ef",
    "ipAddress" : "10.231.210.98",
    "hostname" : "ip-10-231-210-98.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__97061ecb-803e-40ca-a889-7952cac275d2",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "54a39d94ab95bdfada2f915a6de440aa5de7beca363bfb575060e7f37bce02f7",
    "pwSalt" : 2186788029258700479,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-0d5d403dad411137b8ca5e4b5eb43f26",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "538868642711efd1220e83c67f0b42058c550750295647fee485902538cd9554",
    "pwSalt" : -3259870302448010252,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-0d5d403dad411137b8ca5e4b5eb43f26",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "25a8d996c20df377adcd4632915a7babe096e9099fcf2b541e779e8737c3d035",
    "pwSalt" : 2382014648257975332,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-0d5d403dad411137b8ca5e4b5eb43f26",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "61da6876f1965b33d34c1758599c473d8767b067da94985dd4c716f7446a981b",
    "pwSalt" : -4771408605162041797,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-0d5d403dad411137b8ca5e4b5eb43f26",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "2434f58a32cefa70f9c35a84617a3869d5486032c43e7c67cb39135f2ead043a",
    "pwSalt" : -397053458683625891,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "d82b693ae73f4c1d268c3f2fbb215aef35d74b25e5c37b83438f52d77d6c8de7",
    "pwSalt" : -4169351150343513468,
    "pwLogin" : true
  }, {
    "name" : "cvtt",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "cd9d920bb8decabff67205aad423812e2cbb93b57256d1868ac616bf773130e0",
    "pwSalt" : 2174527984781629342,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "0bf165e7a08e8093f6ee6a01b9793dcddc43421696a615ce8655e1816a0bfaea",
    "pwSalt" : 540423200690158152,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.2",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20160916-1426",
    "gitHash" : "d23c620f3a3bbd85d8511d6ebba49beaaab14b75",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "1041235968"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "1041235968"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1352663040"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-10-147-23-91.ec2.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "bootcamp"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "1041235968"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "1041235968"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1352663040"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-0d5d403dad411137b8ca5e4b5eb43f26",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-680218f1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "cmqtu1rf4v10ofvn5xcxglsxl"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-0d5d403dad411137b8ca5e4b5eb43f26",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-680218f1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "99zyztmqmjtycj49bhirvyveu"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-0d5d403dad411137b8ca5e4b5eb43f26",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-680218f1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "9kecf2pxrqj5kzugrc2kq6sos"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-0d5d403dad411137b8ca5e4b5eb43f26",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-680218f1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "c3up6vxx0fvp3a5nq67871f4d"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-0d5d403dad411137b8ca5e4b5eb43f26",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-680218f1"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "22gjrplc6mgtevg9f19jijqh9"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/25/2012 3:10"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/5.8.2/,http://ip-10-145-13-70.ec2.internal/cdh5.8.2/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```