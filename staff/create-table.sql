CREATE TABLE staff(
     staffNo VARCHAR(50) PRIMARY KEY NOT NULL,
     fName VARCHAR(255) NOT NULL,
     lName VARCHAR(255) NOT NULL,
     position VARCHAR(255) NOT NULL,
     sex VARCHAR(10) NOT NULL,
     DOB VARCHAR(255) NOT NULL,
     salary DECIMAL(10, 2) NOT NULL,
     branchNo VARCHAR(255) NOT NULL,
     CONSTRAINT fk_branchNo FOREIGN KEY (branchNo) REFERENCES branches(branchNo)
);

CREATE TABLE branches(
     branchNo VARCHAR(50) PRIMARY KEY NOT NULL,
     branchName VARCHAR(255) NOT NULL,
     branchLocation VARCHAR(255) NOT NULL
);

INSERT INTO
     branches
VALUES
     ('B001', 'Head Office', 'Johannesburg'),
     ('B002', 'Cape Town Branch', 'Cape Town'),
     ('B003', 'Durban Branch', 'Durban'),
     ('B004', 'Pretoria Branch', 'Pretoria'),
     ('B005', 'Port Elizabeth Branch', 'Port Elizabeth'),
     ('B006', 'Bloemfontein Branch', 'Bloemfontein');

INSERT INTO
     STAFF
VALUES
     (
          'S001',
          'John',
          'White',
          'Manager',
          'M',
          '1-Oct-45',
          30000.00,
          'B005'
     );