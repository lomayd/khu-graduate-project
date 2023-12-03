## Semi-Sync

---

### Semi-Sync 플러그인 설치
```
// Master DB
INSTALL PLUGIN rpl_semi_sync_source SONAME 'semisync_source.so';

//Slave DB
INSTALL PLUGIN rpl_semi_sync_replica SONAME 'semisync_replica.so';

// Semi-Sync 플러그인 설치 확인
SELECT PLUGIN_NAME, PLUGIN_STATUS FROM INFORMATION_SCHEMA.PLUGINS WHERE PLUGIN_NAME LIKE '%rpl_semi_sync_%';
```

### Semi-Sync 플러그인 활성화 (DB 재부팅시 재설정 필요, 복제 재시작(stop slave; / start slave;) 필요)
```
// Master DB
SET GLOBAL rpl_semi_sync_source_enabled = ON;

//Slave DB
SET GLOBAL rpl_semi_sync_replica_enabled = ON;
```

### Semi-Sync 적용 확인 ()
```
// Semi-Sync 파라미터 확인
SHOW VARIABLES LIKE '%rpl_semi_sync_%';

// Semi-Sync 현황 확인
SHOW STATUS LIKE '%rpl_semi_sync_%';
(Master DB = Rpl_semi_sync_master_status, Slave DB = Rpl_semi_sync_slave_status)
```