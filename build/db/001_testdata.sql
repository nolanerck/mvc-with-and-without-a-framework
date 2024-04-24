INSERT INTO tCustomer ( CustomerUUID, FirstName, LastName, Email, Address, City, State, ZipCode ) VALUES
	 ( '69672DA1-5068-44A7-9ED825033A864437', 'John', 'Lennon', 'john@thebeatles.net', '12 Dakota Bldg', 'New York', 'NY', '10010' ),
     ( '8B267B62-59F5-4EF7-BEBB42EFF3016694', 'Paul', 'McCartney', 'paulmc@gmail.net', 'Abbey Rd', 'London', 'GA', '12345' ),
     ( '3B36A7A7-B611-4944-84B83042E7091744', 'George', 'Harrison', 'guitarguy@fender.com', '126 G Street', 'Davis', 'CA', '84846' ),
     ( '22BA66CB-B26F-4A5B-9AC8F8EB66FEF267', 'Ringo', 'Starr', 'ringo@drums.org', '555 Starkey St', 'San Francisco', 'CA', '94623' ),
     ( '74786B06-3309-4FA4-B3DEE7B52F24D0EC', 'Pete', 'Best', 'petebest@hotmail.com', '87 original way', 'Portland', 'OR', '22244' );

INSERT INTO tOrder ( OrderUUID, CustomerFK, OrderDate, ShipDate ) VALUES
    ( '418C0BA4-7140-4B2C-AED73FBA75906F78', 1, '2024-01-23', '2024-01-24' ),
    ( '1762C616-D353-4AB1-9AC82422D99E31EC', 2, '2024-02-09', '2024-01-25' ),
    ( '05BFBEDF-1FD2-46E8-B0B5AA7F929AB393', 2, '2024-03-15', '2024-01-25' ),
    ( '6E0BF61C-E341-47EB-BD3ABFFE275F69CD', 3, '2023-07-26', '2024-01-26' ),
    ( 'CFCF1522-DAF1-42F9-83335BD991CFE15A', 3, '2022-01-02', '2022-01-26' ),
    ( 'CFCF1522-DAF1-42F9-83335BD991CFE15A', 4, '2022-02-04', '2022-03-26' ),
    ( 'CFCF1522-DAF1-42F9-83335BD991CFE15A', 4, '2022-09-19', '2022-10-10' );

