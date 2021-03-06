-- Retrieve Data Area

CREATE OR REPLACE FUNCTION RETRIEVE_DATA_AREA_CHAR
(
  NAME CHAR(10),
  LIBRARY CHAR(10) DEFAULT '*LIBL',
  OFFSET INTEGER DEFAULT NULL,
  LENGTH INTEGER DEFAULT NULL
)
RETURNS VARCHAR(2000)
LANGUAGE C
PARAMETER STYLE DB2SQL
SPECIFIC RETRIEVE_DATA_AREA_CHAR
FENCED
NOT DETERMINISTIC
NO FINAL CALL
NO SCRATCHPAD
DISALLOW PARALLEL
EXTERNAL NAME 'OSSILE/SQLRTVDTAA(retrieve_data_area_char)';

CREATE OR REPLACE FUNCTION RETRIEVE_DATA_AREA_DEC
(
  NAME CHAR(10),
  LIBRARY CHAR(10) DEFAULT '*LIBL'
)
RETURNS DECIMAL(37,9)
LANGUAGE C
PARAMETER STYLE DB2SQL
SPECIFIC RETRIEVE_DATA_AREA_DEC
FENCED
NOT DETERMINISTIC
NO FINAL CALL
NO SCRATCHPAD
DISALLOW PARALLEL
EXTERNAL NAME 'OSSILE/SQLRTVDTAA(retrieve_data_area_decimal)';
