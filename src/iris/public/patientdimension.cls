/// 
Class public.patientdimension Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = patient_dimension ]
{

Property patientnum As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 2, SqlFieldName = patient_num ];

Property vitalstatuscd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 3, SqlFieldName = vital_status_cd ];

Property birthdate As %Library.TimeStamp [ SqlColumnNumber = 4, SqlFieldName = birth_date ];

Property deathdate As %Library.TimeStamp [ SqlColumnNumber = 5, SqlFieldName = death_date ];

Property sexcd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 6, SqlFieldName = sex_cd ];

Property ageinyearsnum As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 7, SqlFieldName = age_in_years_num ];

Property languagecd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 8, SqlFieldName = language_cd ];

Property racecd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 9, SqlFieldName = race_cd ];

Property maritalstatuscd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 10, SqlFieldName = marital_status_cd ];

Property religioncd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 11, SqlFieldName = religion_cd ];

Property zipcd As %Library.String(MAXLEN = 10) [ SqlColumnNumber = 12, SqlFieldName = zip_cd ];

Property statecityzippath As %Library.String(MAXLEN = 700) [ SqlColumnNumber = 13, SqlFieldName = statecityzip_path ];

Property incomecd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 14, SqlFieldName = income_cd ];

Property patientblob As %Library.String(MAXLEN = 2147483647) [ SqlColumnNumber = 15, SqlFieldName = patient_blob ];

Property updatedate As %Library.TimeStamp [ SqlColumnNumber = 16, SqlFieldName = update_date ];

Property downloaddate As %Library.TimeStamp [ SqlColumnNumber = 17, SqlFieldName = download_date ];

Property importdate As %Library.TimeStamp [ SqlColumnNumber = 18, SqlFieldName = import_date ];

Property sourcesystemcd As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 19, SqlFieldName = sourcesystem_cd ];

Property uploadid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 20, SqlFieldName = upload_id ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index paidxuploadid On uploadid [ SqlName = pa_idx_uploadid, Type = index ];

/// DDL Primary Key Specification // todo: before data import here should be "IdKey", not only "PrimaryKey"
Index patientdimensionpk On patientnum [ PrimaryKey, SqlName = patient_dimension_pk, Type = index, Unique ];

Index pdidxallpatientdim On (patientnum, vitalstatuscd, birthdate, deathdate, sexcd, ageinyearsnum, languagecd, racecd, maritalstatuscd, incomecd, religioncd, zipcd) [ SqlName = pd_idx_allpatientdim, Type = index ];

Index pdidxdates On (patientnum, vitalstatuscd, birthdate, deathdate) [ SqlName = pd_idx_dates, Type = index ];

Index pdidxstatecityzip On (statecityzippath, patientnum) [ SqlName = pd_idx_statecityzip, Type = index ];

Index indageinyearsnum On ageinyearsnum;

Storage Default
{
<Data name="patientdimensionDefaultData">
<Value name="1">
<Value>patientnum</Value>
</Value>
<Value name="2">
<Value>vitalstatuscd</Value>
</Value>
<Value name="3">
<Value>birthdate</Value>
</Value>
<Value name="4">
<Value>deathdate</Value>
</Value>
<Value name="5">
<Value>sexcd</Value>
</Value>
<Value name="6">
<Value>ageinyearsnum</Value>
</Value>
<Value name="7">
<Value>languagecd</Value>
</Value>
<Value name="8">
<Value>racecd</Value>
</Value>
<Value name="9">
<Value>maritalstatuscd</Value>
</Value>
<Value name="10">
<Value>religioncd</Value>
</Value>
<Value name="11">
<Value>zipcd</Value>
</Value>
<Value name="12">
<Value>statecityzippath</Value>
</Value>
<Value name="13">
<Value>incomecd</Value>
</Value>
<Value name="14">
<Value>patientblob</Value>
</Value>
<Value name="15">
<Value>updatedate</Value>
</Value>
<Value name="16">
<Value>downloaddate</Value>
</Value>
<Value name="17">
<Value>importdate</Value>
</Value>
<Value name="18">
<Value>sourcesystemcd</Value>
</Value>
<Value name="19">
<Value>uploadid</Value>
</Value>
</Data>
<DataLocation>^B5ms.DsYj.1</DataLocation>
<DefaultData>patientdimensionDefaultData</DefaultData>
<ExtentLocation>^B5ms.DsYj</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^B5ms.DsYj.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^B5ms.DsYj.2</Location>
</Index>
<Index name="IDKEY">
<Location>^B5ms.DsYj.1</Location>
</Index>
<Index name="indageinyearsnum">
<Location>^B5ms.DsYj.8</Location>
</Index>
<Index name="paidxuploadid">
<Location>^B5ms.DsYj.4</Location>
</Index>
<Index name="patientdimensionpk">
<Location>^B5ms.DsYj.3</Location>
</Index>
<Index name="pdidxallpatientdim">
<Location>^B5ms.DsYj.6</Location>
</Index>
<Index name="pdidxdates">
<Location>^B5ms.DsYj.7</Location>
</Index>
<Index name="pdidxstatecityzip">
<Location>^B5ms.DsYj.5</Location>
</Index>
<IndexLocation>^B5ms.DsYj.I</IndexLocation>
<StreamLocation>^B5ms.DsYj.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}