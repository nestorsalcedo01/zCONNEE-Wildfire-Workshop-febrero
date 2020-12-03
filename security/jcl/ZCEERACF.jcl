//*---------------------------------------------------------*/
//*   DEFINE UNAUTHENTICATED USER, APPL and EJBROLE         */
//*---------------------------------------------------------*/
//RACF     EXEC PGM=IKJEFT01,REGION=0M
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *
ADDGROUP WSGUESTG OMVS(AUTOGID) OWNER(SYS1)

ADDGROUP ZCEEUSRS OMVS(AUTOGID) OWNER(SYS1)
ADDUSER WSGUEST RESTRICTED DFLTGRP(WSGUESTG) OMVS(AUTOUID -
  HOME(/u/wsguest) PROGRAM(/bin/sh)) NAME('UNAUTHENTICATED USER') -
  NOPASSWORD NOOIDCARD

CONNECT (FRED,USER1,JOHNSON) GROUP(ZCEEUSRS)

RDEFINE APPL BBGZDFLT UACC(NONE) OWNER(SYS1)
PERMIT BBGZDFLT CLASS(APPL) RESET
PERMIT BBGZDFLT CLASS(APPL) ACCESS(READ) ID(WSGUEST,ZCEEUSRS)
SETROPTS RACLIST(APPL) REFRESH

RDEFINE EJBROLE BBGZDFLT.zos.connect.access.roles.zosConnectAccess -
  OWNER(SYS1) UACC(NONE)
PE BBGZDFLT.zos.connect.access.roles.zosConnectAccess CLASS(EJBROLE) -
  RESET
PE BBGZDFLT.zos.connect.access.roles.zosConnectAccess -
  CLASS(EJBROLE) ID(ZCEEUSRS) ACCESS(READ)
SETR RACLIST(EJBROLE) REFRESH
/*
