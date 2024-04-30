CREATE SCHEMA INSTANCE;

CREATE TABLE `nypd-arrest`.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  ,
	year int64  ,
	monthNum int64  ,
	dayNum int64  ,
	dayName string  ,
	monthName string  ,
	weekOfMonth int64  ,
	weekOfYear int64  ,
	arrest_date datetime  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE `nypd-arrest`.INSTANCE.dim_demo_perp ( 
	demo_perp_id string NOT NULL  ,
	age_group string  ,
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
	law_code int64  ,
	law_cat_cd string  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.dim_offense ADD PRIMARY KEY ( offense_id )  NOT ENFORCED;

CREATE TABLE `nypd-arrest`.INSTANCE.facts_police_activity ( 
	policies_activity_id int64 NOT NULL  ,
	freq_arrest_by_boro int64  ,
	incident_count int64  ,
	location_id int64 NOT NULL  ,
	offense_id int64 NOT NULL  ,
	date_id int64 NOT NULL  ,
	demo_perp_id int64 NOT NULL  ,
	arrest_key int64  
 );

ALTER TABLE `nypd-arrest`.INSTANCE.facts_police_activity ADD PRIMARY KEY ( policies_activity_id )  NOT ENFORCED;
