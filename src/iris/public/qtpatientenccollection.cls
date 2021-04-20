/// 
Class public.qtpatientenccollection Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = qt_patient_enc_collection ]
{

Property patientenccollid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ InitialExpression = "nextval('qt_patient_enc_collection_patient_enc_coll_id_seq'::regclass)", Required, SqlColumnNumber = 2, SqlFieldName = patient_enc_coll_id ];

Property resultinstanceid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 3, SqlFieldName = result_instance_id ];

Property setindex As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 4, SqlFieldName = set_index ];

Property patientnum As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 5, SqlFieldName = patient_num ];

Property encounternum As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 6, SqlFieldName = encounter_num ];

/// Foreign Key qtfkpescri created via DDL
ForeignKey qtfkpescri(resultinstanceid) References public.qtqueryresultinstance(qtqueryresultinstancepkey) [ SqlName = qt_fk_pesc_ri ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

/// DDL Primary Key Specification
Index qtpatientenccollectionpkey On patientenccollid [ PrimaryKey, SqlName = qt_patient_enc_collection_pkey, Type = index, Unique ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="qtpatientenccollectionDefaultData">
<Value name="1">
<Value>patientenccollid</Value>
</Value>
<Value name="2">
<Value>resultinstanceid</Value>
</Value>
<Value name="3">
<Value>setindex</Value>
</Value>
<Value name="4">
<Value>patientnum</Value>
</Value>
<Value name="5">
<Value>encounternum</Value>
</Value>
</Data>
<DataLocation>^B5ms.Dw3t.1</DataLocation>
<DefaultData>qtpatientenccollectionDefaultData</DefaultData>
<ExtentLocation>^B5ms.Dw3t</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^B5ms.Dw3t.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^B5ms.Dw3t.2</Location>
</Index>
<Index name="IDKEY">
<Location>^B5ms.Dw3t.1</Location>
</Index>
<Index name="qtpatientenccollectionpkey">
<Location>^B5ms.Dw3t.3</Location>
</Index>
<IndexLocation>^B5ms.Dw3t.I</IndexLocation>
<StreamLocation>^B5ms.Dw3t.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}