## Replication Type

MySQL 8.0버전 기준으로

**binlog_format - ROW**

로 기본값이 되어있음

---

복제 타입 **Statement-Based Replication(SBR)**로 변경방법 (global으로 변경되지 않아서, session으로 변경함)
```
stop slave;
set session binlog_format='STATEMENT';
start slave;
```

복제 타입 **Row-Based Replication(RBR)**로 변경방법 (global으로 변경되지 않아서, session으로 변경함)
```
stop slave;
set session binlog_format='ROW';
start slave;
```

복제 타입 **Mixed-Based Replication(MBR)**로 변경방법 (global으로 변경되지 않아서, session으로 변경함)
```
stop slave;
set session binlog_format='MIXED';
start slave;
```