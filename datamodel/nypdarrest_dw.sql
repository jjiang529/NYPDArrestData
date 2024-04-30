CREATE SCHEMA INSTANCE;

CREATE TABLE `nypd-arrest`.INSTANCE.dim_date ( 
	date_id datetime NOT NULL  ,
	year int64  ,
	quarter int64  ,
	monthNum int64  ,
	weekOfmonth int64  ,
	weekOfyear int64  ,
	dayNum int64  ,
	dayName string  ,
	monthName string  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE `nypd-arrest`.INSTANCE.dim_demo_perp ( 
	demo_perp_id string NOT NULL  ,
	age_group int64  ,
	perp_sex string  ,
	perp_race string  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.dim_demo_perp ADD PRIMARY KEY ( demo_perp_id )  NOT ENFORCED;

CREATE TABLE `nypd-arrest`.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	longitude int64  ,
	latitude int64  ,
	arrest_precident int64  ,
	arrest_boro string  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE `nypd-arrest`.INSTANCE.dim_offense ( 
	offense_id string NOT NULL  ,
	ofn_desc string  ,
	pd_desc string  ,
	law_code int64  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.dim_offense ADD PRIMARY KEY ( offense_id )  NOT ENFORCED;

CREATE TABLE `nypd-arrest`.INSTANCE.facts_police_activity ( 
	policies_activity_id int64 NOT NULL  ,
	arrest_count int64  ,
	freq_arrest_by_boro int64  ,
	incident_count int64  ,
	location_id int64 NOT NULL  ,
	offense_id string NOT NULL  ,
	date_id datetime NOT NULL  ,
	demo_perp_id string NOT NULL  ,
	arrest_key int64  
 );