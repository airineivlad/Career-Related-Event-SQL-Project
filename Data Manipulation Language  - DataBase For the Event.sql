
SELECT nume, prenume, id_comanda
FROM ANGAJATI_D, COMANDA;

SELECT C.DENUMIRE
FROM WORKSHOP W, COMPANIE C
WHERE C.IDCOMPANIE=W.IDCOMPANIE AND C.IDPACHET=3;

SELECT C.DENUMIRE
FROM WORKSHOP W, COMPANIE C
WHERE C.IDCOMPANIE=W.IDCOMPANIE AND W.DENUMIRE LIKE '%Silver%';

SELECT W.DENUMIRE, C.DENUMIRE
FROM WORKSHOP W, COMPANIE C
WHERE C.IDCOMPANIE=W.idCompanie AND W.DENUMIRE LIKE '%Gold%';

SELECT W.DENUMIRE, C.DENUMIRE
FROM WORKSHOP W, COMPANIE C
WHERE C.IDCOMPANIE=W.idCompanie AND W.DENUMIRE LIKE '%GOLD%';

SELECT avg(pret)MEDIE_PRET_PACHETE
FROM PACHET
WHERE pret>500;

SELECT count(*)
FROM PARTICIPANT
WHERE EXTRACT(MONTH FROM DATAN)=7;

SELECT idPachet, denumire, (case
when idPachet=1 then 1.2*pret
when idPachet=2 then 1.5*pret
when idPachet=3 then 1.7*pret
else pret
end) PRET_MAJORAT
from PACHET;

SELECT W.DENUMIRE Workshop , P.NUME, P.PRENUME , C.DENUMIRE
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW, COMPANIE C
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop 
AND C.IDCOMPANIE=W.idCompanie AND C.DENUMIRE Like 'IBM';

SELECT W.DENUMIRE, P.NUME, P.PRENUME , C.DENUMIRE
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW, COMPANIE C
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop 
AND C.IDCOMPANIE=W.idCompanie AND C.DENUMIRE Like 'IBM';

SELECT W.DENUMIRE, P.NUME, P.PRENUME
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop AND W.DENUMIRE Like 'Java'
UNION
SELECT W.DENUMIRE, P.NUME, P.PRENUME
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop AND W.DENUMIRE Like 'C/C++'

SELECT W.DENUMIRE, P.NUME, P.PRENUME
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop AND W.DENUMIRE Like 'C/C++';

SELECT ME.NUME, D.DENUMIRE
FROM DEPARTAMENT D, MEMBRU_ECHIPA ME
WHERE ME.IDDEPARTAMENT=D.IDDEPARTAMENT 
AND ME.NUME Like '%A%' 
AND ( D.DENUMIRE Like '%IT%' OR D.DENUMIRE Like '%Edu%');

SELECT ME.NUME, D.DENUMIRE
FROM DEPARTAMENT D, MEMBRU_ECHIPA ME
WHERE ME.IDDEPARTAMENT=D.IDDEPARTAMENT 
AND ME.NUME Like '%A%' 
AND ( D.DENUMIRE Like '%IT%' OR D.DENUMIRE Like '%EDU%');

SELECT NUME, PRENUME , DATAN
FROM PARTICIPANT
WHERE EXTRACT(YEAR FROM DATAN)=1995;
SELECT NUME, PRENUME
FROM PARTICIPANT
WHERE EXTRACT(YEAR FROM DATAN)=1995;
SELECT EXTRACT(MONTH FROM DATAN)
FROM PARTICIPANT;

SELECT W.DENUMIRE, COUNT(P.idPart)PARTICIPANTI
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
GROUP BY W.DENUMIRE
HAVING COUNT(P.idPart)= ( SELECT MAX(COUNT(P.idPart)) 
                         FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW 
                         WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
                          GROUP BY W.DENUMIRE);
                          
SELECT C.denumire,P.denumire, P.materialeGrafice, P.pret
FROM COMPANIE C, PACHET P
WHERE C.idPachet=P.idPachet AND upper(C.denumire)='MISYS';

SELECT MAX(COUNT(P.idPart))
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
GROUP BY W.DENUMIRE;

SELECT W.DENUMIRE, COUNT(P.idPart)PARTICIPANTI
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
GROUP BY W.DENUMIRE
ORDER BY COUNT(P.idPart) DESC;

SELECT P.nume, P.prenume, COUNT(W.DENUMIRE)
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
GROUP BY P.nume, P.prenume
ORDER BY COUNT(W.DENUMIRE);

SELECT P.nume, COUNT(W.DENUMIRE)
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
GROUP BY P.nume;

SELECT P.nume, COUNT(W.DENUMIRE)
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
GROUP BY P.nume
ORDER BY COUNT(W.DENUMIRE);

SELECT P.idPart,P.nume,P.prenume, W.DENUMIRE
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop
ORDER BY P.idPart;

SELECT P.idPart,P.nume,P.prenume, W.DENUMIRE
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop;

SELECT P.nume,P.prenume, W.DENUMIRE
FROM PARTICIPANT P, WORKSHOP W, PARTICIPANT_WORKSHOP PW
WHERE PW.idPart=P.idPart AND PW.idWorkshop=W.idWorkshop;

SELECT M.nume, D.denumire, D.director
FROM MEMBRU_ECHIPA M, DEPARTAMENT D
WHERE M.idDepartament=D.idDepartament;

SELECT M.NUME, D.DENUMIRE 
FROM MEMBRU_ECHIPA M, DEPARTAMENT D
WHERE M.idDepartament=D.idDepartament;

SELECT * FROM PACHET WHERE idPachet NOT IN (SELECT idPachet FROM COMPANIE);

DELETE FROM PARTICIPANT WHERE  idPart NOT IN(SELECT idPart FROM PARTICIPANT_WORKSHOP);

SELECT * FROM PARTICIPANT WHERE  idPart NOT IN(SELECT idPart FROM PARTICIPANT_WORKSHOP);

SELECT * FROM PARTICIPANT WHERE  idPart IN(SELECT idPart FROM PARTICIPANT_WORKSHOP);

UPDATE DEPARTAMENT SET numarMembri=numarMembri+5 WHERE DENUMIRE NOT LIKE '%IT%';

select * from PARTICIPANT_WORKSHOP WHERE ROWNUM<15;
select * from PARTICIPANT_WORKSHOP;
select * from workshop;

DELETE FROM COMPANIE WHERE 2<3;

ALTER TABLE COMPANIE 
MODIFY adresa varchar (100);

ALTER TABLE COMPANIE
DROP COLUMN grupa;


ALTER TABLE MEMBRU_ECHIPA
DROP COLUMN prenume;

ALTER TABLE PARTICIPANT 
ADD CONSTRAINT  verifica_p_mail CHECK (email LIKE '%@%.%');

DROP TABLE PARTENER_POSIBIL;

CREATE TABLE PARTENER_POSIBIL AS SELECT idCompanie, denumire, persoanaContact FROM COMPANIE;

ALTER TABLE PACHET
DROP COLUMN stand;

ALTER TABLE MEMBRU_ECHIPA
ADD CONSTRAINT numem_nn CHECK (nume IS NOT NULL);

ALTER TABLE MEMBRU_ECHIPA
ADD CONSTRAINT telefon_nn CHECK (telefon IS NOT NULL);

ALTER TABLE MEMBRU_ECHIPA
ADD CONSTRAINT email_nn CHECK (email IS NOT NULL);

ALTER TABLE DEPARTAMENT
ADD CONSTRAINT denumirew_nn CHECK (denumire IS NOT NULL);

ALTER TABLE DEPARTAMENT
ADD CONSTRAINT numarMembri_nn CHECK (numarMembri IS NOT NULL);

ALTER TABLE COMPANIE
ADD CONSTRAINT denumirec_nn CHECK (denumire IS NOT NULL);

ALTER TABLE COMPANIE
ADD CONSTRAINT persoanaContact_nn CHECK (persoanaContact IS NOT NULL);

ALTER TABLE PACHET
ADD CONSTRAINT denumirep_nn CHECK (denumire IS NOT NULL);

ALTER TABLE PACHET
ADD CONSTRAINT pret_nn CHECK (pret IS NOT NULL);
