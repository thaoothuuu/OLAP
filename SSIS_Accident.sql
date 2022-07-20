create database ImportData;
use ImportData;

create database AccidentDW;
use AccidentDW;


--CREATE FOREIGN KEY
Alter table Fact_Accident
add constraint fk_date
foreign key(IDDate) references Dim_Date(IDDate);
GO
Alter table Fact_Accident
add constraint fk_time
foreign key(IDTime) references Dim_Time(IDTime);
GO
Alter table Fact_Accident
add constraint fk_location
foreign key(IDLocation) references Dim_Location(IDLocation);
GO
Alter table Fact_Accident
add constraint fk_infrastructure
foreign key(IDInfrastructure) references Dim_Infrastructure(IDInfrastructure);
GO
Alter table Fact_Accident
add constraint fk_weather
foreign key(IDWeather) references Dim_Weather(IDWeather);
GO
Alter table Fact_Accident
add constraint fk_severty
foreign key(IDSeverity) references Dim_Severity(IDSeverity);





--DROP FOREIGN KEY
alter table Fact_Accident
drop constraint fk_date;
GO
alter table Fact_Accident
drop constraint fk_time;
GO
alter table Fact_Accident
drop constraint fk_location;
GO
alter table Fact_Accident
drop constraint fk_infrastructure;
GO
alter table Fact_Accident
drop constraint fk_weather;
GO
alter table Fact_Accident
drop constraint fk_severty;





--DELETE DATA FROM IMPORTDATA TABLE
delete from DataAccident;




--DELETE DATA FROM DIM TABLE
delete from Dim_Date;
GO
delete from Dim_Time;
GO
delete from Dim_Location;
GO
delete from Dim_Infrastructure;
GO
delete from Dim_Weather;
GO
delete from Dim_Severity;




--DELETE DATA FROM FACT TABLE
delete from Fact_Accident;

