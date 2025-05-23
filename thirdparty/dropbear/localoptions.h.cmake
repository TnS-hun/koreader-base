#cmakedefine DEBUG_TRACE @DEBUG_TRACE@
#cmakedefine DROPBEAR_DEFPORT "@DROPBEAR_DEFPORT@"
#cmakedefine01 DROPBEAR_SMALL_CODE
#cmakedefine01 DROPBEAR_X11FWD
#cmakedefine01 INETD_MODE
#cmakedefine01 LOG_COMMANDS
// Paths.
#cmakedefine DBSCP_PATH                "@DBSCP_PATH@"
#cmakedefine DEFAULT_PATH              "@DEFAULT_PATH@"
#cmakedefine DROPBEAR_PATH_SSH_PROGRAM "@DROPBEAR_PATH_SSH_PROGRAM@"
#cmakedefine DROPBEAR_PIDFILE          "@DROPBEAR_PIDFILE@"
#cmakedefine SFTPSERVER_PATH           "@SFTPSERVER_PATH@"
// Keys.
#cmakedefine DSS_PRIV_FILENAME   "@DSS_PRIV_FILENAME@"
#cmakedefine RSA_PRIV_FILENAME   "@RSA_PRIV_FILENAME@"
#cmakedefine ECDSA_PRIV_FILENAME "@ECDSA_PRIV_FILENAME@"
#cmakedefine ED25519_PRIV_FILENAME "@ED25519_PRIV_FILENAME@"
// Extra part of the SSH server identification string.
#define IDENT_VERSION_PART "_" DROPBEAR_VERSION " (KOReader)"
// Disable mlkem769 (post-quantum key exchange): sntrup761 is
// already available and much lighter in terms of code size.
#define DROPBEAR_MLKEM768 0
