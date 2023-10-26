## Slave Parallel Type

MySQL 8.0버전 기준으로

**slave_parallel_type - LOGICAL_CLOCK**

**slave_parallel_workers - 4**

로 기본값이 되어있음

---

병렬 타입 **DATABASE**로 변경방법
```
stop slave;
set global slave_parallel_type='DATABASE';
set global replica_preserve_commit_order='OFF'; 
start slave;
```

병렬 타입 **LOGICAL_CLOCK**으로 변경방법
```
stop slave;
set global slave_parallel_type='LOGICAL_CLOCK';
set global replica_preserve_commit_order='ON'; 
start slave;
```
