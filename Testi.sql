use Stamdata

select k.Kode, k.Beskrivelse,  kt.*, ktg.*, kthg.*, * from Kode k
inner join KodeType kt ON kt.KodeTypeId = k.KodeTypeId
inner join KodeTypeGruppe ktg ON ktg.KodeTypeGruppeId = kt.KodeTypeGruppeId
inner join KodeTypeHovedGruppe kthg ON kthg.KodeTypeHovedGruppeId = ktg.KodeTypeHovedGruppeId
--where kthg.KodeTypeHovedGruppeNavn = '�konomi'
where k.Kode = '570'

select * from KodeType
select * from KodeTypeGruppe
select * from KodeTypeHovedGruppe

--KodeType 56 Honorar - Ikke sagsp�virkende | KodeTypeGruppe 23 Honorar | KodeTypeHovedGruppe 2 �konomi
--Skal ExpenceType (ExpenceGroupTypes) kunne udledes evt. fra Kode?
--L�s 

select * from Handling where Kode = '570'
order by Unik desc