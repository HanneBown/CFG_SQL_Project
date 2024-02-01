
-- creating tables--

CREATE DATABASE LIMS;

USE LIMS;
CREATE TABLE Devices
(
Device_ID VARCHAR(2),
Device_name VARCHAR(20)
);

INSERT INTO devices VALUES
('D1', 'Rotahaler'),
('D2', 'Cyclohaler'),
('D3', 'Handihaler');

USE LIMS;
CREATE TABLE Coarse_lactose
(
Coarse_lactose_ID VARCHAR(10),
Coarse_lactose_name VARCHAR(10)
);

INSERT INTO Coarse_lactose VALUES
('CL1', 'LH100'),
('CL2', 'LH206');

USE LIMS;
CREATE TABLE Fine_lactose
(
Fine_lactose_ID VARCHAR(10),
Fine_lactose_name VARCHAR(10)
);

INSERT INTO Fine_lactose VALUES
('FL1', 'LH300'),
('FL2', 'LH230'),
('FL3', 'LH210');

USE LIMS;
CREATE TABLE Lactose_blends
(
Blend_ID VARCHAR(10),
Coarse_lactose_ID VARCHAR(10),
Fine_lactose_ID VARCHAR(10),
Fine_lactose_percentage DEC(4,2)
);

INSERT INTO lactose_blends VALUES
('B1','CL1', NULL, NULL),
('B2','CL1','FL1', 2.5),
('B3','CL1','FL1', 5),
('B4','CL1','FL1', 10),
('B5','CL1','FL1', 20),
('B6','CL1','FL2', 2.5),
('B7','CL1','FL2', 5),
('B8','CL1','FL2', 10),
('B9','CL1','FL2', 20),
('B10','CL1','FL3', 2.5),
('B11','CL1','FL3', 5),
('B12','CL1','FL3', 10),
('B13','CL1','FL3', 20),
('B14','CL2', NULL, NULL),
('B15','CL2','FL1', 2.5),
('B16','CL2','FL1', 5),
('B17','CL2','FL1', 10),
('B18','CL2','FL1', 20),
('B19','CL2','FL2', 2.5),
('B20','CL2','FL2', 5),
('B21','CL2','FL2', 10),
('B22','CL2','FL2', 20),
('B23','CL2','FL3', 2.5),
('B24','CL2','FL3', 5),
('B25','CL2','FL3', 10),
('B26','CL2','FL3', 20);

USE LIMS; 
CREATE TABLE experiments
(Experiment_ID VARCHAR(10),
Experiment_name VARCHAR(20)
);

INSERT INTO experiments VALUES
('E01', 'FPF_(%)'),
('E02', 'PSD_below_4.5');

USE LIMS;
CREATE TABLE FPF_Results
(Blend_ID VARCHAR(10),
Experiment_ID VARCHAR(10),
Device_ID VARCHAR(10),
Result_percent DECIMAL(4,2)
);

INSERT INTO FPF_results VALUES
('B1','E01','D3', 15.2),
('B1','E01','D1', 15.7),
('B1','E01','D2', 24.1),
('B10','E01','D1', 14.5),
('B10','E01','D3', 16.2),
('B10','E01','D2', 23.1),
('B11',	'E01','D1', 15.4),
('B11',	'E01', 'D3', 18.3),
('B11',	'E01','D2', 24.1),
('B12',	'E01','D1', 18.1),
('B12',	'E01','D3',	19.4),
('B12',	'E01','D2',	27.4),
('B13',	'E01','D1',	17.9),
('B13',	'E01','D3',	18.8),
('B13',	'E01','D2',	26.6),
('B14',	'E01','D1',	16.9),
('B14',	'E01','D3',	20.4),
('B14',	'E01','D2',	24.6),
('B15',	'E01','D1',	25.6),
('B15',	'E01','D3',	27.5),
('B15',	'E01','D2',	32.5),
('B16',	'E01','D1',	30.9),
('B16',	'E01','D2',	36.1),
('B16',	'E01','D3',	38.1),
('B17',	'E01','D1',	36.1),
('B17',	'E01','D3',	41.1),
('B17',	'E01','D2',	44.7),
('B18',	'E01','D3',	35.5),
('B18',	'E01','D2',	36.7),
('B18',	'E01','D1',	38.2),
('B19',	'E01','D1',	18.4),
('B19',	'E01','D3',	19.3),
('B19',	'E01','D2',	25.5),
('B2',	'E01','D1',	20.2),
('B2',	'E01','D3',	22.7),
('B2',	'E01','D2',	26.6),
('B20',	'E01','D1',	17.9),
('B20',	'E01','D3',	22.3),
('B20',	'E01','D2',	26.7),
('B21',	'E01','D3',	22.8),
('B21',	'E01','D1',	24.7),
('B21',	'E01','D2',	28.7),
('B22',	'E01','D3',	26.7),
('B22',	'E01','D1',	31.4),
('B22',	'E01','D2',	32.9),
('B23',	'E01','D1',	13.9),
('B23',	'E01','D3',	17.2),
('B23',	'E01','D2',	23.3),
('B24',	'E01','D3',	20.3),
('B24',	'E01','D1',	20.6),
('B24',	'E01','D2',	25.1),
('B25',	'E01','D1',	15.7),
('B25',	'E01','D3',	18.3),
('B25',	'E01','D2',	24.3),
('B26',	'E01','D3',	22.5),
('B26',	'E01','D1',	23.6),
('B26',	'E01','D2',	30.4),
('B3', 'E01', 'D1',	28.4),
('B3',	'E01','D3',	33.9),
('B3',	'E01','D2',	35.8),
('B4',	'E01','D3',	43.1),
('B4',	'E01','D1',	44.2),
('B4',	'E01','D2',	46.9),
('B5',	'E01','D3',	37.0),
('B5',	'E01','D1',	37.8),
('B5',	'E01','D2',	39.7),
('B6',	'E01','D1',	17.3),
('B6',	'E01','D3',	17.6),
('B6',	'E01','D2',	23.8),
('B7',	'E01','D1',	16.1),
('B7',	'E01','D3',	20.8),
('B7',	'E01','D2',	25.3),
('B8',	'E01','D1',	20.9),
('B8',	'E01','D3',	22.5),
('B8',	'E01','D2',	28.2),
('B9',	'E01','D3',	31.5),
('B9',	'E01','D1',	32.1),
('B9',	'E01','D2',	36.0);


USE LIMS;
CREATE TABLE PSD_below_4pt5_microns
(Blend_ID VARCHAR(10),
Experiment_ID VARCHAR(20),
Result_pcnt DECIMAL(4,2)
);

INSERT INTO PSD_below_4pt5_microns VALUES
('B1', 'E02', 1.29),
('B2', 'E02', 4.88),
('B3', 'E02', 9.34),
('B4','E02', 17.43),
('B5','E02', 23.04),
('B6','E02', 2.76),
('B7','E02', 4.32),
('B8','E02', 7.23),
('B9','E02', 12.47),
('B10','E02', 1.98),
('B11','E02', 2.62),
('B12','E02', 4.08),
('B13','E02', 6.02),
('B14','E02', 2.44),
('B15',	'E02', 6.13),
('B16',	'E02', 10.42),
('B17',	'E02', 18.16),
('B18',	'E02', 22.43),
('B19',	'E02', 3.69),
('B20',	'E02', 5.29),
('B21',	'E02', 8.04),
('B22',	'E02', 12.40),
('B23',	'E02', 3.45),
('B24',	'E02', 3.66),
('B25',	'E02', 5.05),
('B26',	'E02', 7.01);

 -- adding primary and foreign key contraints--

USE LIMS;
ALTER TABLE coarse_lactose
ADD PRIMARY KEY (Coarse_lactose_ID);

USE LIMS;
ALTER TABLE devices
ADD PRIMARY KEY (Device_ID);

USE LIMS;
ALTER TABLE experiments
ADD PRIMARY KEY (Experiment_ID);

USE LIMS;
ALTER TABLE fine_lactose
ADD PRIMARY KEY (Fine_lactose_ID);

USE LIMS;
ALTER TABLE lactose_blends
ADD PRIMARY KEY (Blend_ID);

USE LIMS;
ALTER TABLE fpf_results
ADD FOREIGN KEY (Blend_ID) REFERENCES lactose_blends(Blend_ID);

USE LIMS;
ALTER TABLE fpf_results
ADD FOREIGN KEY (Experiment_ID) REFERENCES experiments(Experiment_ID);

USE LIMS;
ALTER TABLE fpf_results
ADD FOREIGN KEY (Device_ID) REFERENCES devices(Device_ID);

USE LIMS;
ALTER TABLE psd_below_4pt5_microns
ADD FOREIGN KEY (Blend_ID) REFERENCES lactose_blends(Blend_ID);

USE LIMS;
ALTER TABLE psd_below_4pt5_microns
ADD FOREIGN KEY (Experiment_ID) REFERENCES experiments(Experiment_ID);

USE LIMS;
ALTER TABLE lactose_blends
ADD FOREIGN KEY (Fine_lactose_ID) REFERENCES fine_lactose(Fine_lactose_ID);

USE LIMS;
ALTER TABLE lactose_blends
ADD FOREIGN KEY (Coarse_lactose_ID) REFERENCES coarse_lactose(Coarse_lactose_ID);

-- use joins to create views--
-- Here I have created a view to display the blend composition -- 
 
USE LIMS;
SELECT lactose_blends.Blend_ID,
coarse_lactose.Coarse_lactose_name,
fine_lactose.Fine_lactose_name,
lactose_blends.Fine_lactose_percentage
FROM lactose_blends
LEFT OUTER JOIN fine_lactose ON
lactose_blends.Fine_lactose_ID=fine_lactose.Fine_lactose_ID
INNER JOIN coarse_lactose ON
lactose_blends.Coarse_lactose_ID=coarse_lactose.Coarse_lactose_ID;

-- And a table to display particle size results and composition for the blends

USE LIMS;
SELECT lactose_blends.Blend_ID, 
coarse_lactose.Coarse_lactose_name,
fine_lactose.Fine_lactose_name,
lactose_blends.Fine_lactose_percentage,
psd_below_4pt5_microns.Result_pcnt
FROM lactose_blends
JOIN psd_below_4pt5_microns ON
psd_below_4pt5_microns.Blend_ID=lactose_blends.Blend_ID
JOIN coarse_lactose ON 
coarse_lactose.Coarse_lactose_ID=lactose_blends.Coarse_lactose_ID
LEFT OUTER JOIN fine_lactose ON
fine_lactose.Fine_lactose_ID=lactose_blends.Fine_lactose_ID;

-- create a stored function that can be used to query the DB --
-- This function isn't really meaningful for this dataset but would be useful for example converting units --

delimiter //
CREATE FUNCTION Return_decimal_results(result DECIMAL(6,2))
RETURNS DECIMAL(6,2) DETERMINISTIC
BEGIN
RETURN (result/100);
END//
delimiter ;

SELECT Return_decimal_results(Result_percent) FROM fpf_results;


-- example query with a subquery to extract data for analysis --

USE LIMS;
SELECT lactose_blends.Blend_ID, 
coarse_lactose.Coarse_lactose_name,
fine_lactose.Fine_lactose_name,
lactose_blends.Fine_lactose_percentage,
devices.Device_name,
fpf_results.Result_percent
FROM lactose_blends
JOIN fpf_results ON
fpf_results.Blend_ID=lactose_blends.Blend_ID
JOIN coarse_lactose ON 
coarse_lactose.Coarse_lactose_ID=lactose_blends.Coarse_lactose_ID
LEFT OUTER JOIN fine_lactose ON
fine_lactose.Fine_lactose_ID=lactose_blends.Fine_lactose_ID
LEFT OUTER JOIN devices ON
devices.Device_ID=fpf_results.Device_ID
WHERE Result_percent IN (SELECT Result_percent FROM fpf_results WHERE Result_percent>30) AND Device_name=('cyclohaler') AND Fine_lactose_name=('LH210');

-- create view for visualising particle size vs fine particle fraction on different devices in Tableau--

USE LIMS;
SELECT lactose_blends.Blend_ID,
devices.Device_name,
fpf_results.Result_percent,
psd_below_4pt5_microns.Result_pcnt
FROM fpf_results
JOIN lactose_blends ON
fpf_results.Blend_ID=lactose_blends.Blend_ID
LEFT OUTER JOIN devices ON
devices.Device_ID=fpf_results.Device_ID
JOIN psd_below_4pt5_microns ON
psd_below_4pt5_microns.Blend_ID=fpf_results.Blend_ID
ORDER BY device_name;

-- create DB diagram where all relations are shown --
-- please see the separate pdf file --



-- create a stored procedure and demonstrate how it runs --

delimiter //

CREATE PROCEDURE select_all_blends_with_FPF_over_40pcnt ()
BEGIN
SELECT lactose_blends.Blend_ID, 
coarse_lactose.Coarse_lactose_name,
fine_lactose.Fine_lactose_name,
lactose_blends.Fine_lactose_percentage,
devices.Device_name,
fpf_results.Result_percent
FROM lactose_blends
JOIN fpf_results ON
fpf_results.Blend_ID=lactose_blends.Blend_ID
JOIN coarse_lactose ON 
coarse_lactose.Coarse_lactose_ID=lactose_blends.Coarse_lactose_ID
LEFT OUTER JOIN fine_lactose ON
fine_lactose.Fine_lactose_ID=lactose_blends.Fine_lactose_ID
LEFT OUTER JOIN devices ON
devices.Device_ID=fpf_results.Device_ID
WHERE Result_percent IN (SELECT Result_percent FROM fpf_results WHERE Result_percent>40);
END//
delimiter ;

CALL select_all_blends_with_FPF_over_40pcnt; 


-- create a trigger and demonstrate how it runs --

DELIMITER //
CREATE TRIGGER adding_new_coarse_lactose 
AFTER INSERT ON coarse_lactose
FOR EACH ROW
BEGIN
INSERT INTO lactose_blends
(Blend_ID,
Coarse_lactose_ID,
Fine_lactose_ID,
Fine_lactose_percentage)
VALUES
('B27','CL3',NULL, NULL),
('B28','CL3','FL1', 2.5),
('B29','CL3','FL1', 5),
('B30','CL3','FL1', 10),
('B31','CL3','FL1', 20),
('B32','CL3','FL2', 2.5),
('B33','CL3','FL2', 5),
('B34','CL3','FL2', 10),
('B35','CL3','FL2', 20),
('B36','CL3','FL3', 2.5),
('B37','CL3','FL3', 5),
('B38','CL3','FL3', 10),
('B39','CL3','FL3', 20);

INSERT INTO psd_below_4pt5_microns
(Blend_ID,
Experiment_ID,
Result_pcnt)
VALUES
('B27','E02', NULL),
('B28','E02', NULL),
('B29','E02', NULL),
('B30','E02', NULL),
('B31','E02', NULL),
('B32','E02', NULL),
('B33','E02', NULL),
('B34','E02', NULL),
('B35','E02', NULL),
('B36','E02', NULL),
('B37','E02', NULL),
('B38','E02', NULL),
('B39','E02', NULL); 

END //
DELIMITER ;

INSERT INTO Coarse_lactose VALUES
('CL3', 'SV010');

-- create an event and demonstrate how it runs --
-- an event to display blends that still need analysis -- 

USE LIMS;


delimiter // 
CREATE EVENT list_of_samples_to_run
ON SCHEDULE AT CURRENT_TIMESTAMP()
ON COMPLETION PRESERVE 
DO BEGIN
CREATE VIEW to_do_list 
AS SELECT ROW_NUMBER () OVER () AS ExpNum,
Blend_ID FROM psd_below_4pt5_microns
WHERE Result_pcnt IS NULL;

END //
delimiter ;

SELECT * FROM to_do_list;

-- create a view that uses 3 or 4 base tables and query the view --

USE LIMS;

CREATE VIEW experimental_design_FPF
AS SELECT ROW_NUMBER () OVER () AS RowNum, 
coarse_lactose.Coarse_lactose_name, 
fine_lactose.Fine_lactose_name,
lactose_blends.Fine_lactose_percentage,
devices.Device_name
FROM fpf_results
JOIN devices ON 
devices.Device_ID=fpf_results.Device_ID
JOIN lactose_blends ON
lactose_blends.Blend_ID=fpf_results.Blend_ID
LEFT OUTER JOIN fine_lactose ON
fine_lactose.Fine_lactose_ID=lactose_blends.Fine_lactose_ID
JOIN coarse_lactose ON
coarse_lactose.Coarse_lactose_ID=lactose_blends.Coarse_lactose_ID
WHERE devices.Device_name='Handihaler' AND fine_lactose.Fine_lactose_name='LH300';

SELECT * FROM experimental_design_fpf;


-- prepare an example query with group by and having demonstrate how to extract data from the DB for analysis--

-- N.B. adding this piece of code to remove error 1055 just in case, it popped up for the last quary when I dropeed the schema
-- and checked that the code was working as expected--

SELECT @@sql_mode;

SET @@sql_mode = SYS.LIST_DROP(@@sql_mode, 'ONLY_FULL_GROUP_BY');
SELECT @@sql_mode;

USE LIMS;
SELECT devices.Device_name,
fpf_results.Result_percent
FROM fpf_results
JOIN devices ON
fpf_results.Device_ID=devices.Device_ID
GROUP BY device_name
HAVING result_percent<20;



































