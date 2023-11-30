#!/bin/bash

echo "=====Install===="
bucardo install --batch
echo "======UPDATE=====\n\n\n\n\n\n\n\n\n\n\n\n"

bucardo add database db1 dbname=user_d host=db1
bucardo add database db2 dbname=user_d host=db2 
bucardo add database db3 dbname=user_d host=db3
bucardo add all tables --her=testDbSrv1 db=db1 
bucardo add all tables --her=testDbSrv2 db=db2
bucardo add all tables --her=testDbSrv3 db=db3
bucardo add sync testDbSrv1 relgroup=testDbSrv1 db=db1,db2,db3
bucardo add sync testDbSrv2 relgroup=testDbSrv2 db=db2,db1,db3
bucardo add sync testDbSrv3 relgroup=testDbSrv3 db=db3,db2,db1
bucardo restart sync
