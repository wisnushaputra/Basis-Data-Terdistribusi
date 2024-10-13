CREATE TABLE  barang (
barangID int NOT NULL AUTO_INCREMENT,
barangName varchar (100) NOT NULL,
barangHarga float NOT NULL,
barangStock int NOT NULL,
PRIMARY KEY (barangID)
);

CREATE TABLE detiljual (
idDetil int NOT NULL AUTO_INCREMENT,
barangID int NOT NULL,
Quantity int,
SUBTOTAL float,
PRIMARY KEY (idDetil),
FOREIGN KEY (barangID) REFERENCES barang(barangID));

INSERT INTO barang (barangName, barangHarga, barangStock)
VALUES	
("Kaos", 10000, 1),
("Sepatu Coklat", 50000, 5),
("Celana", 75000, 2),
("Baju Gede", 20000, 3)


INSERT INTO detiljual (barangID, Quantity, SUBTOTAL)
VALUES 
(5,5, 50000),
(5,3, 30000),
(6,2, 100000),
(6,6, 300000),
(6,3, 150000),
(7,2, 150000),
(7,1, 75000),
(8,7, 140000),
(8,5, 100000)


SELECT * FROM barang
ORDER BY barangName DESC


SELECT (count(*))
FROM barang


SELECT count(*) AS 'jumlah barang yang kurang dari 50000' 
FROM barang
WHERE barangHarga < 50000;


SELECT AVG(barangHarga) AS 'rata rata harga barang'
FROM barang;

SELECT (BarangID),sum(Quantity), sum(SUBTOTAL)
FROM detiljual dj
GROUP BY barangID;



SELECT barangID , SUM(quantity) AS'jumlah barang', SUM(SUBTOTAL) AS 'total'
FROM detiljual d 
GROUP BY barangID 
HAVING total < 1000000;

