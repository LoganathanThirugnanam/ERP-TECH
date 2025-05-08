USE scmdb
GO

-- Drop table Zrit_gr_rever_his
IF NOT EXISTS (SELECT '1' FROM sys.objects WHERE name = 'Zrit_gr_rever_his' AND type = 'U')
BEGIN
    CREATE TABLE [dbo].Zrit_gr_rever_his
    (
        ou              UDD_CTXT_OUINSTANCE NOT NULL,
        grno            UDD_DOCUMENTNO NOT NULL,
        grdate          UDD_DATE NULL,
        refdoctype      UDD_DESC255 NULL,
        itemcode        UDD_ITEMCODE NULL,
        variantcode     UDD_VARIANT NULL,
        uom             UDD_DESC255 NULL,
        grrate          UDD_QUANTITY NULL,
        grqty           UDD_QUANTITY NULL,
        grvalue         UDD_QUANTITY NULL,
        warehouse       UDD_DESC255 NULL,
        costmeth        UDD_DESC255 NULL,
		grfolder		UDD_DESC255 NULL,
		grtype			UDD_DESC255 NULL,
		grstatus		UDD_DESC255 NULL,
		suppcode		UDD_DESC255 NULL,
		suppname		UDD_DESC4000 NULL,
		reascode		UDD_DESC255 NULL,
		descrp			UDD_DESC4000 NULL,
		revsdate		UDD_DATE NULL,
		remarks			UDD_DESC4000 NULL,
        created_by      UDD_CTXT_USER NULL,
        created_date    UDD_DATE NULL,
        modified_by     UDD_CTXT_USER NULL,
        modified_date   UDD_DATE NULL,
        CONSTRAINT pk_gr_rev PRIMARY KEY (ou, grno)

    )
END

IF EXISTS (SELECT 'X' FROM sys.objects WHERE name = 'Zrit_gr_rever_his')
BEGIN
    GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Zrit_gr_rever_his TO PUBLIC
END
GO
