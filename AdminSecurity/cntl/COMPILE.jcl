//USER1S JOB MSGCLASS=H,NOTIFY=&SYSUID
//* JCLLIB ORDER=SYS1.ECOBOL.SIGYPROC
//COMPILE EXEC IGYWCL,LNGPRFX=SYS1.ECOBOL,PARM.COBOL='NODYNAM'
//COBOL.SYSIN  DD DISP=SHR,DSN=USER1.ZCEE.SOURCE(POSTAPI)
//COBOL.SYSLIB DD DISP=SHR,DSN=USER1.ZCEE30.SOURCE
//             DD DISP=SHR,DSN=ZCEE30.SBAQCOB
//LKED.SYSLMOD DD DISP=SHR,DSN=USER1.ZCEE30.LOADLIB(POSTAPI)
//LKED.BAQLIB  DD DISP=SHR,DSN=ZCEE30.SBAQLIB
//LKED.SYSIN   DD *
  INCLUDE BAQLIB(BAQCSTUB)
//COMPILE EXEC IGYWCL,LNGPRFX=SYS1.ECOBOL,PARM.COBOL='NODYNAM'
//COBOL.SYSIN  DD DISP=SHR,DSN=USER1.ZCEE.SOURCE(GETAPI)
//COBOL.SYSLIB DD DISP=SHR,DSN=USER1.ZCEE30.SOURCE
//             DD DISP=SHR,DSN=ZCEE30.SBAQCOB
//LKED.SYSLMOD DD DISP=SHR,DSN=USER1.ZCEE30.LOADLIB(GETAPI)
//LKED.BAQLIB  DD DISP=SHR,DSN=ZCEE30.SBAQLIB
//LKED.SYSIN   DD *
  INCLUDE BAQLIB(BAQCSTUB)
//COMPILE EXEC IGYWCL,LNGPRFX=SYS1.ECOBOL,PARM.COBOL='NODYNAM'
//COBOL.SYSIN  DD DISP=SHR,DSN=USER1.ZCEE.SOURCE(PUTAPI)
//COBOL.SYSLIB DD DISP=SHR,DSN=USER1.ZCEE30.SOURCE
//             DD DISP=SHR,DSN=ZCEE30.SBAQCOB
//LKED.SYSLMOD DD DISP=SHR,DSN=USER1.ZCEE30.LOADLIB(PUTAPI)
//LKED.BAQLIB  DD DISP=SHR,DSN=ZCEE30.SBAQLIB
//LKED.SYSIN   DD *
  INCLUDE BAQLIB(BAQCSTUB)
//COMPILE EXEC IGYWCL,LNGPRFX=SYS1.ECOBOL,PARM.COBOL='NODYNAM'
//COBOL.SYSIN  DD DISP=SHR,DSN=USER1.ZCEE.SOURCE(DELTAPI)
//COBOL.SYSLIB DD DISP=SHR,DSN=USER1.ZCEE30.SOURCE
//             DD DISP=SHR,DSN=ZCEE30.SBAQCOB
//LKED.SYSLMOD DD DISP=SHR,DSN=USER1.ZCEE30.LOADLIB(DELTAPI)
//LKED.BAQLIB  DD DISP=SHR,DSN=ZCEE30.SBAQLIB
//LKED.SYSIN   DD *
  INCLUDE BAQLIB(BAQCSTUB)
