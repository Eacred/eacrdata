// +build !fullpgdb

package dbconfig

// Test DB server and database config.
const (
	PGTestsHost   = "localhost" // "/run/postgresql" for UNIX socket
	PGTestsPort   = "5432"      // "" for UNIX socket
	PGTestsUser   = "postgres"  // "ecrdata" for full database rather than test data repo
	PGTestsPass   = ""
	PGTestsDBName = "ecrdata_mainnet_test"
)
