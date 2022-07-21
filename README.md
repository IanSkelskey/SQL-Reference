# SQL Reference

A SQL cheat sheet that I made while taking SER322: Database Management at Arizona State University.

## Datatypes

| Datatype      | Description                                                                                                                                                                                                                         |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CHAR(size)    | A FIXED length string (can contain letters, numbers, and special characters). The*size* parameter specifies the column length in characters - can be from 0 to 255. Default is 1                                                    |
| VARCHAR(size) | A VARIABLE length string (can contain letters, numbers, and special characters). The*size* parameter specifies the maximum column length in characters - can be from 0 to 65535                                                     |
| BOOL, BOOLEAN | Zero is considered as false, nonzero values are considered as true.                                                                                                                                                                 |
| INT(size)     | A medium integer. Signed range is from -2147483648 to 2147483647. Unsigned range is from 0 to 4294967295. The size parameter specifies the maximum display width (which is 255)                                                     |
| FLOAT(p)      | A floating point number. MySQL uses the p value to determine whether to use FLOAT or DOUBLE for the resulting data type. If p is from 0 to 24, the data type becomes FLOAT(). If p is from 25 to 53, the data type becomes DOUBLE() |
| DATE          | A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'                                                                                                                                                |
| YEAR          | A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000. MySQL 8.0 does not support year in two-digit format.                                                                                      |


Types and descriptions are from [W3Schools](https://www.w3schools.com/sql/sql_datatypes.asp).

## CREATE TABLE

Adds a new table to a database with specified fields and keys.

```sql
CREATE TABLE TABLE_NAME (
    field1 FIELD_TYPE OPT_KEY_STATUS,
    field2 FIELD_TYPE OPT_KEY_STATUS,
        ...
    fieldn FIELD_TYPE OPT_KEY_STATUS
);
```

## DROP TABLE

Drops an existing table from a database. Be careful with this. 
Dropping a table will cause all data that it contains to be lost.

```sql
DROP TABLE TABLE_NAME;
```

## TRUNCATE TABLE

Truncating a table deletes the data inside a table, but not the table itself.

```sql
TRUNCATE TABLE TABLE_NAME;
```

## INSERT INTO

Add rows to an existing table. 

1. Specify the columns that you'd like to populate.

```sql
INSERT INTO TABLE_NAME (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

2. If you are adding data in all columns, the specification is not necessary, and you can use this simplified syntax.

```sql
INSERT INTO TABLE_NAME
VALUES (value1, value2, value3, ...);
```