CREATE TABLE [ founder ](
    [ employeeID ] INTEGER PRIMARY KEY AUTOINCREMENT(100),
    [ firstName ] VARCHAR(100),
    [ lastName ] VARCHAR(100),
    [ dobDay ] VARCHAR(100),
    [ dobMonth ] VARCHAR(100),
    [ dobYear ] VARCHAR(100)
);

(CREATE TABLE \[)([a-z]{0,})(\]\(\n{0,}$\t{0,}\s{0,}\[)([a-zA-Z]{0,})(\] VARCHAR\(100\))( NOT NULL,)(\n{0,}$\t{0,}\s{0,}\[)([a-zA-Z]{0,})(\] VARCHAR\(100\),)(\n{0,}$\t{0,}\s{0,}\[)([a-zA-Z]{0,})(\] VARCHAR\(100\),)(\n\t{0,}\s{0,}\[)([a-zA-Z]{0,})(\]\s{0,}INTEGER\s{0,}PRIMARY\s{0,}KEY\s{0,}AUTOINCREMENT\(100\),)(\n\s{0,}\t{0,}\[)([a-zA-Z]{0,})(\]\s{0,}INTEGER\(100\),)(\n\);)
1      (CREATE TABLE \[)
2      ([a-z]{0,})
3      (\]\(\n{0,}$\t{0,}\s{0,}\[)
4      ([a-zA-Z]{0,})
5      (\] VARCHAR\(100\))
6      ( NOT NULL,)
7      (\n{0,}$\t{0,}\s{0,}\[)
8      ([a-zA-Z]{0,})
9      (\] VARCHAR\(100\),)
10      (\n{0,}$\t{0,}\s{0,}\[)
11      ([a-zA-Z]{0,})
12      (\] VARCHAR\(100\))
13      (\n\t{0,}\s{0,}\[)
14      ([a-zA-Z]{0,})
15      (\]\s{0,}INTEGER\s{0,}PRIMARY\s{0,}KEY\s{0,}AUTOINCREMENT\(100\),)
16      (\n\s{0,}\t{0,}\[)
17      ([a-zA-Z]{0,})
18      (\]\s{0,}INTEGER\(100\),)
19      (\n\);)

$1 multimedia $3 type $5 $6 $13
$1 category $3 type $5 $6 $13
$1 website $3 url $5 $6 $7 pubDateDay $9 $10 pubDateMonth $9 $10 pubDateYear $12 $13
$1 ceo $3 employeeID $15 $7 firstName $9 $10 lastName $12 $16
$1 company $3 employeeID $15 $7 registeredName $5 $6 $7 countryOrigin $9 $10 currentWorth $18 $10 numberEmployees $18 $19
$1 developer $3 employeeID $15 $7 firstName $9 $7 lastName $9 $7 expertise $9 $19
$1 officeLocation $3 officeID $15 $7 postalCode $5 $6 $7 country $9 $10 city $5 $19
$1 founder $3 employeeID $15 $7 firstName $9 $10 lastName $9 $10 dobDay $9 $10 dobMonth $9 $10 dobYear $12 $19

final comma remove
(,)(\s{0,}\n{1,}\);)
$2
Seems the [] are unnecessary
(\[)(\s{0,}[a-zA-Z]{0,}\s{0,})(\])
$2
