--ejemplo de pedra,papel o tijera
rps
|id  |  name   |defeat_id|
--------------------------
| 1  | Rock    |  3      |
| 2  | paper   |  1      |
| 3  | Scissors|  2      |

SELECT r1.name AS object, r2.name AS beats
FROM rps AS r1
INNER JOIN rps AS r2
ON r1.defeats_id = r2.id;

--ejemplo de jerarquias
employees
|id  |  name     | title   |boss_id|
------------------------------------
| 1  | patrick   |  junior | 2     |
| 2  | abigail   |  Manager| 3     |
| 3  | bob       | Director| 4     |
| 4  | Maximus   |  CEO    | null  |

SELECT e.name AS employee_name , b.name  AS boss_name
FROM employees AS e
INNER JOIN employees AS b
ON e.boss_id = b.id;